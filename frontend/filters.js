// A corrected and refactored version of your script.

document.addEventListener('DOMContentLoaded', async () => {
    // --- ELEMENTS ---
    const themeToggle = document.getElementById('theme-toggle');
    const questionTableBody = document.getElementById('question-table-body');
    const companyFilter = document.getElementById('filter-company');
    const timeFilter = document.getElementById('filter-time');
    const pageSizeSelector = document.getElementById('page-size');
    const pageNavigation = document.getElementById('page-navigation');
    const paginationContainer = document.getElementById('pagination-container');
    const topicSelectBox = document.getElementById('topic-select-box');
    const topicSelectText = document.getElementById('topic-select-text');
    const topicsDropdown = document.getElementById('topics-dropdown');
    const solvedHeaderCheckbox = document.getElementById('filter-solved-header');
    const flaggedHeaderCheckbox = document.getElementById('filter-flagged-header');
    const commentModal = document.getElementById('comment-modal');
    const modalQuestionTitle = document.getElementById('modal-question-title');
    const commentTextarea = document.getElementById('comment-textarea');
    const saveCommentBtn = document.getElementById('save-comment-btn');
    const cancelCommentBtn = document.getElementById('cancel-comment-btn');
    const clearSolvedBtn = document.getElementById('clear-solved-btn');
    const clearFlaggedBtn = document.getElementById('clear-flagged-btn');

    // --- STATE ---
    const storedFlags = JSON.parse(localStorage.getItem('flaggedQuestionsMap')) || {};
    // Convert string keys from localStorage back to numbers before creating the Map
    const flagEntries = Object.entries(storedFlags).map(([key, value]) => [parseInt(key, 10), value]);
    let flaggedQuestionsMap = new Map(flagEntries);

    let currentEditingQuestionId = null; // To track which question's comment is being edited
    let solvedQuestions = new Set(JSON.parse(localStorage.getItem('solvedQuestions')) || []);
    let filteredAndSortedQuestions = [];
    let companyDataMap = {}; // holds questions divided by time period
    let currentPage = 1;
    let questionsPerPage = parseInt(pageSizeSelector.value, 10);
    let currentSortColumn = 'frequency'; // Default sort
    let currentSortDirection = 'desc'; // Default direction

    // --- THEME LOGIC ---
    const applyTheme = (theme) => {
        document.body.classList.toggle('dark-mode', theme === 'dark');
        themeToggle.checked = theme === 'dark';
    };
    const savedTheme = localStorage.getItem('theme') || 'dark';
    applyTheme(savedTheme);
    themeToggle.addEventListener('change', () => {
        const newTheme = themeToggle.checked ? 'dark' : 'light';
        localStorage.setItem('theme', newTheme);
        applyTheme(newTheme);
    });

    // --- DATA LOADING & INITIALIZATION ---

    /**
     * Updates the UI after new company data is fetched or loaded from localStorage.
     */
    function processCompanyData(companyData) {
        if (!companyData || !companyData.time_periods) {
            showErrorMessage("No question data found for this company.");
            return;
        }

        // STEP 1: Populate Time Period Dropdown dynamically
        const timePeriods = companyData.time_periods;
        const timePeriodKeys = Object.keys(timePeriods);
        timeFilter.innerHTML = ''; // Clear old options
        timePeriodKeys.forEach(label => {
            const option = document.createElement('option');
            option.value = label; // Use the actual key as the value
            option.textContent = label.replace(/^\d+\.\s*/, ''); // Strip "1. " prefix
            timeFilter.appendChild(option);
        });

        // Select "All" by default
        const allKey = timePeriodKeys.find(k => k.toLowerCase().includes('all'));
        timeFilter.value = allKey || timePeriodKeys[0];

        // STEP 2: Build companyDataMap
        companyDataMap = { ...timePeriods };

        // STEP 3: Load default dataset and populate topics
        const defaultQuestions = companyDataMap[timeFilter.value] || [];
        populateTopics(defaultQuestions);

        // STEP 4: Render the table
        applyFiltersAndSort();
    }

    /**
     * Main initialization function on page load.
     */
    async function initializeApp() {
        // Load companies from companies.json file
        let companiesData = [];
        try {
            const response = await fetch('companies.json');
            if (!response.ok) throw new Error(`HTTP ${response.status}`);
            companiesData = await response.json();
            
            // Store both company data and names list in localStorage
            localStorage.setItem('companiesData', JSON.stringify(companiesData));
            localStorage.setItem('companiesList', JSON.stringify(companiesData.map(c => c.name)));
        } catch (err) {
            console.error("Failed to load companies.json:", err);
            // Fallback to localStorage if file fetch fails
            const storedData = localStorage.getItem('companiesData');
            if (storedData) {
                companiesData = JSON.parse(storedData);
            } else {
                showErrorMessage("Could not load company list. Please refresh the page.");
                return;
            }
        }

        // Sort companies alphabetically by name
        companiesData.sort((a, b) => a.name.toLowerCase().localeCompare(b.name.toLowerCase()));
        
        // Populate company dropdown
        companyFilter.innerHTML = '';
        companiesData.forEach(company => {
            const option = document.createElement('option');
            option.value = company.name;
            option.textContent = company.name;
            option.dataset.companyId = company.company_id; // Store company_id as data attribute
            companyFilter.appendChild(option);
        });

        // Load data for the stored company
        const storedCompany = localStorage.getItem('selectedCompany');
        const companyData = JSON.parse(localStorage.getItem('companyData'));

        if (!companyData || !storedCompany) {
            showErrorMessage("No company data found. Please select a company from either the home page or the company filter.");
            return;
        }

        companyFilter.value = storedCompany;
        processCompanyData(companyData);
        
        // Initial setup for the sort icon display
        updateSortIcons(currentSortColumn, currentSortDirection);
    }

    // --- UI POPULATION & RENDERING ---

    function populateTopics(questions) {
        topicsDropdown.innerHTML = '';
        const allTopics = [...new Set(questions.flatMap(q => q.topics))].sort((a, b) =>
            a.toLowerCase().localeCompare(b.toLowerCase())
        );
        allTopics.forEach(topic => {
            const label = document.createElement('label');
            const checkbox = document.createElement('input');
            checkbox.type = 'checkbox';
            checkbox.value = topic;
            checkbox.addEventListener('change', () => {
                updateTopicSelectionText();
                applyFiltersAndSort();
            });
            label.appendChild(checkbox);
            label.appendChild(document.createTextNode(` ${topic}`));
            topicsDropdown.appendChild(label);
        });
        updateTopicSelectionText();
    }

    function updateTopicSelectionText() {
        const selectedCount = topicsDropdown.querySelectorAll('input:checked').length;
        if (selectedCount === 0) {
            topicSelectText.textContent = 'Select topics...';
        } else if (selectedCount === 1) {
            topicSelectText.textContent = topicsDropdown.querySelector('input:checked').value;
        } else {
            topicSelectText.textContent = `${selectedCount} topics selected`;
        }
    }

    function showErrorMessage(message) {
        questionTableBody.innerHTML = `<tr><td colspan="7" style="text-align:center; padding: 2rem; color: #ef4444;">${message}</td></tr>`;
        paginationContainer.style.display = 'none';
    }

    // --- MODAL MANAGEMENT ---
    function openCommentModal(questionId) {
        const question = filteredAndSortedQuestions.find(q => q.question_id === questionId);
        if (!question) return;

        currentEditingQuestionId = questionId;
        modalQuestionTitle.textContent = question.title;
        commentTextarea.value = flaggedQuestionsMap.get(questionId) || ''; // Get existing comment or empty string

        commentModal.classList.remove('hidden');
        commentTextarea.focus();
    }

    function closeCommentModal() {
        commentModal.classList.add('hidden');
        currentEditingQuestionId = null;
    }

    const renderQuestions = (questionsToRender) => {
        questionTableBody.innerHTML = '';
        if (questionsToRender.length === 0) {
            showErrorMessage("No questions match the current filters.");
            return;
        }
        paginationContainer.style.display = 'flex';

        questionsToRender.forEach(q => {
            const row = document.createElement('tr');
            const isFlagged = flaggedQuestionsMap.has(q.question_id);
            const isSolved = solvedQuestions.has(q.question_id);
            const topicsHTML = q.topics.map(t => `<span class="topic-tag">${t}</span>`).join('');
            
            // Check if there's a comment to determine if the icon should be 'edit_note' or 'note_add'
            const hasComment = flaggedQuestionsMap.get(q.question_id);
            const noteIconName = hasComment ? 'edit_note' : 'note_add';

            const noteIconHTML = isFlagged 
            ? `<span class="material-symbols-outlined edit-comment-icon" data-id="${q.question_id}" title="${hasComment ? 'Edit Note' : 'Add Note'}">${noteIconName}</span>` 
            : '';

            row.innerHTML = `
                <td class="col-solved">
                    <span class="material-symbols-outlined solved-icon ${isSolved ? 'solved' : ''}" data-id="${q.question_id}">check_circle</span>
                </td>
                
                <td class="col-flag">
                <span class="material-symbols-outlined flag-icon ${isFlagged ? 'flagged' : ''}" data-id="${q.question_id}">bookmark</span>
                ${noteIconHTML} </td>
                <td class="col-title question-title"><a href="${q.link}" target="_blank">${q.title}</a></td>
                <td class="col-difficulty"><span class="difficulty-tag difficulty-${q.difficulty}">${q.difficulty}</span></td>
                <td class="col-acceptance">${(q.acceptance_rate * 100).toFixed(1)}%</td>
                <td class="col-frequency">${q.frequency}</td>
                <td class="col-topics">${topicsHTML}</td>
            `;
            questionTableBody.appendChild(row);
        });
    };

    // --- FILTER & SORT LOGIC ---

    const applyFiltersAndSort = () => {
        const selectedTimeKey = timeFilter.value;
        let result = [...(companyDataMap[selectedTimeKey] || [])];

        // Apply other filters
        const selectedTopics = Array.from(topicsDropdown.querySelectorAll('input:checked')).map(cb => cb.value);
        if (selectedTopics.length > 0) result = result.filter(q => selectedTopics.every(topic => q.topics.includes(topic)));
        
        // Check header checkboxes for filtering
        if (flaggedHeaderCheckbox.checked) result = result.filter(q => flaggedQuestionsMap.has(q.question_id));
        if (solvedHeaderCheckbox.checked) result = result.filter(q => solvedQuestions.has(q.question_id));

        // Apply sorting
        const difficultyMap = { 'EASY': 1, 'MEDIUM': 2, 'HARD': 3 };
        if (currentSortColumn) {
            result.sort((a, b) => {
                let valA, valB;
                switch (currentSortColumn) {
                    case 'difficulty':
                        valA = difficultyMap[a.difficulty] || 0;
                        valB = difficultyMap[b.difficulty] || 0;
                        break;
                    case 'acceptance':
                        valA = a.acceptance_rate;
                        valB = b.acceptance_rate;
                        break;
                    case 'frequency':
                        valA = a.frequency;
                        valB = b.frequency;
                        break;
                    case 'flagged':
                        valA = flaggedQuestionsMap.has(a.question_id) ? 1 : 0;
                        valB = flaggedQuestionsMap.has(b.question_id) ? 1 : 0;
                        break;
                    case 'solved':
                        valA = solvedQuestions.has(a.question_id) ? 1 : 0;
                        valB = solvedQuestions.has(b.question_id) ? 1 : 0;
                        break;
                    default: return 0;
                }
                return currentSortDirection === 'asc' ? valA - valB : valB - valA;
            });
        }

        filteredAndSortedQuestions = result;
        currentPage = 1;
        displayCurrentPage();
    };
    
    // Updates the sort icons display (called from sort click and company change)
    const updateSortIcons = (sortType, direction) => {
        // 1. Reset all icons
        document.querySelectorAll('.sortable .material-symbols-outlined').forEach(icon => {
            icon.classList.remove('active');
            icon.textContent = 'unfold_more'; // Default caret
            icon.removeAttribute('data-direction');
        });

        // 2. Set the active icon
        const activeHeader = document.querySelector(`.sortable[data-sort="${sortType}"]`);
        const activeIcon = activeHeader ? activeHeader.querySelector('.material-symbols-outlined') : null;
        
        if (activeIcon) {
            activeIcon.classList.add('active');
            activeIcon.textContent = direction === 'asc' ? 'arrow_upward' : 'arrow_downward';
            activeIcon.setAttribute('data-direction', direction); // Store direction for reference
        }
    };


    // --- PAGINATION ---
    const displayCurrentPage = () => {
        const startIndex = (currentPage - 1) * questionsPerPage;
        const endIndex = startIndex + questionsPerPage;
        renderQuestions(filteredAndSortedQuestions.slice(startIndex, endIndex));
        updatePaginationControls();
    };

    const updatePaginationControls = () => {
        pageNavigation.innerHTML = '';
        const totalPages = Math.ceil(filteredAndSortedQuestions.length / questionsPerPage);
        if (totalPages <= 1) {
            paginationContainer.style.display = 'none';
            return;
        };
        
        const createButton = (text, onClick, isDisabled = false, isActive = false) => {
            const button = document.createElement('button');
            button.textContent = text;
            button.disabled = isDisabled;
            if (isActive) button.classList.add('active');
            button.addEventListener('click', onClick);
            return button;
        };
        
        pageNavigation.appendChild(createButton('Previous', () => { if (currentPage > 1) { currentPage--; displayCurrentPage(); }}, currentPage === 1));

        for (let i = 1; i <= totalPages; i++) {
            pageNavigation.appendChild(createButton(i, () => { currentPage = i; displayCurrentPage(); }, false, i === currentPage));
        }

        pageNavigation.appendChild(createButton('Next', () => { if (currentPage < totalPages) { currentPage++; displayCurrentPage(); }}, currentPage === totalPages));
    };

    // --- EVENT LISTENERS ---

    timeFilter.addEventListener('change', applyFiltersAndSort);
    
    pageSizeSelector.addEventListener('change', (e) => {
        questionsPerPage = parseInt(e.target.value, 10);
        applyFiltersAndSort();
    });
    
    // Switch companies and reload data
    companyFilter.addEventListener('change', async () => {
        const selectedCompany = companyFilter.value;
        if (!selectedCompany) return;

        // Get the company_id from the selected option
        const selectedOption = companyFilter.options[companyFilter.selectedIndex];
        const companyId = selectedOption.dataset.companyId;

        questionTableBody.innerHTML = `<tr><td colspan="7" style="text-align:center; padding: 2rem;">Loading questions for ${selectedCompany}...</td></tr>`;

        try {
            const response = await fetch(`/company-questions/?company_name=${selectedCompany}`);
            if (!response.ok) throw new Error(`HTTP ${response.status}`);
            const data = await response.json();

            localStorage.setItem('selectedCompany', selectedCompany);
            localStorage.setItem('selectedCompanyId', companyId); // Store company_id for future use
            localStorage.setItem('companyData', JSON.stringify(data));

            // Reset sort order
            currentSortColumn = 'frequency';
            currentSortDirection = 'desc'; 
            updateSortIcons(currentSortColumn, currentSortDirection);

            processCompanyData(data);

        } catch (err) {
            console.error(`Failed to fetch company data:`, err);
            showErrorMessage(`Could not load data for ${selectedCompany}.`);
        }
    });

    // Custom dropdown listeners
    topicSelectBox.addEventListener('click', () => {
        topicsDropdown.classList.toggle('visible');
        topicSelectBox.classList.toggle('open');
    });
    window.addEventListener('click', (e) => {
        if (!topicSelectBox.contains(e.target) && !topicsDropdown.contains(e.target)) {
            topicsDropdown.classList.remove('visible');
            topicSelectBox.classList.remove('open');
        }
    });

    // Solved/Flagged icon clicks
    questionTableBody.addEventListener('click', (e) => {
        const target = e.target;
        const questionId = parseInt(target.dataset.id, 10);
        if (!questionId) return;

        if (target.classList.contains('flag-icon')) {
            if (flaggedQuestionsMap.has(questionId)) {
                flaggedQuestionsMap.delete(questionId);
            } else {
                flaggedQuestionsMap.set(questionId, "");
            }
            localStorage.setItem('flaggedQuestionsMap', JSON.stringify(Object.fromEntries(flaggedQuestionsMap)));
            displayCurrentPage(); 
            if (flaggedHeaderCheckbox.checked) applyFiltersAndSort();
        } else if (target.classList.contains('solved-icon')) {
            if (solvedQuestions.has(questionId)) {
                solvedQuestions.delete(questionId);
            } else {
                solvedQuestions.add(questionId);
            }
            localStorage.setItem('solvedQuestions', JSON.stringify([...solvedQuestions]));
            
            if (solvedHeaderCheckbox.checked) {
                applyFiltersAndSort();
            } else {
                displayCurrentPage(); 
            }
        } else if (target.classList.contains('edit-comment-icon')) {
            openCommentModal(questionId);
        }
    });

    // --- COLUMN HEADER SORTING ---
    document.querySelectorAll('.sortable').forEach(th => {
        th.addEventListener('click', (e) => {
            if (e.target.closest('input')) return;

            const sortType = th.dataset.sort;
            
            let newDirection;
            if (currentSortColumn === sortType) {
                newDirection = currentSortDirection === 'asc' ? 'desc' : 'asc';
            } else {
                newDirection = 'desc'; 
            }
            
            currentSortColumn = sortType;
            currentSortDirection = newDirection;
            updateSortIcons(currentSortColumn, currentSortDirection);
            
            applyFiltersAndSort();
        });
    });

    // Header Checkbox Filters
    solvedHeaderCheckbox.addEventListener('change', applyFiltersAndSort);
    flaggedHeaderCheckbox.addEventListener('change', applyFiltersAndSort);

    // Clear Buttons
    clearSolvedBtn.addEventListener('click', () => {
        if (confirm("Are you sure you want to clear all solved questions? This action cannot be undone.")) {
            solvedQuestions.clear();
            localStorage.setItem('solvedQuestions', JSON.stringify([]));
            solvedHeaderCheckbox.checked = false;
            displayCurrentPage();
            alert("All solved questions have been cleared.");
        }
    });

    clearFlaggedBtn.addEventListener('click', () => {
        if (confirm("Are you sure you want to clear all flagged questions and their notes? This action cannot be undone.")) {
            flaggedQuestionsMap.clear();
            localStorage.setItem('flaggedQuestionsMap', JSON.stringify({}));
            flaggedHeaderCheckbox.checked = false;
            displayCurrentPage();
            alert("All flagged questions and notes have been cleared.");
        }
    });

    // Comment Modal
    saveCommentBtn.addEventListener('click', () => {
        if (currentEditingQuestionId !== null) {
            const newComment = commentTextarea.value.trim();
            flaggedQuestionsMap.set(currentEditingQuestionId, newComment);
            localStorage.setItem('flaggedQuestionsMap', JSON.stringify(Object.fromEntries(flaggedQuestionsMap)));
            closeCommentModal();
            displayCurrentPage();
        }
    });

    cancelCommentBtn.addEventListener('click', closeCommentModal);
    commentModal.addEventListener('click', (e) => {
        if (e.target === commentModal) {
            closeCommentModal();
        }
    });
    
    // --- RUN ---
    initializeApp();
});


// --- SETTINGS MODAL ---
const settingsBtn = document.getElementById('settings-btn');
const settingsModal = document.getElementById('settings-modal');
const deleteDataBtn = document.getElementById('delete-data-btn');
const openModal = () => settingsModal.classList.remove('hidden');
const closeModal = () => settingsModal.classList.add('hidden');
settingsBtn.addEventListener('click', openModal);
settingsModal.addEventListener('click', (e) => { if (e.target === settingsModal) closeModal(); });
deleteDataBtn.addEventListener('click', () => {
    if (confirm("Are you sure you want to delete all your data? This action cannot be undone.")) {
        localStorage.clear();
        alert("All user data has been deleted.");
        closeModal();
        location.reload(); // Reload to clear state
    }
});