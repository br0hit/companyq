// A corrected and refactored version of your script.

document.addEventListener('DOMContentLoaded', async () => {
    // --- ELEMENTS ---
    const themeToggle = document.getElementById('theme-toggle');
    const questionTableBody = document.getElementById('question-table-body');
    const companyFilter = document.getElementById('filter-company');
    const timeFilter = document.getElementById('filter-time');
    const flaggedFilter = document.getElementById('filter-flagged');
    const solvedFilter = document.getElementById('filter-solved');
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

    // --- STATE ---
    // let flaggedQuestions = new Set(JSON.parse(localStorage.getItem('flaggedQuestions')) || []);
    // let flaggedQuestionsMap = new Map(Object.entries(JSON.parse(localStorage.getItem('flaggedQuestionsMap')) || {}));

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
        // Populate company dropdown first
        let companies = JSON.parse(localStorage.getItem('companiesList')) || [];
        if (companies.length === 0) {
            try {
                const response = await fetch('/companies/');
                const data = await response.json();
                companies = data.map(item => item.name);
                localStorage.setItem('companiesList', JSON.stringify(companies));
            } catch (err) {
                console.error("Failed to load company list:", err);
            }
        }
        companies.sort((a, b) => a.toLowerCase().localeCompare(b.toLowerCase()));
        companyFilter.innerHTML = '';
        companies.forEach(c => {
            const option = document.createElement('option');
            option.value = c;
            option.textContent = c;
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
            // const isFlagged = flaggedQuestions.has(q.question_id);
            const isFlagged = flaggedQuestionsMap.has(q.question_id);
            const isSolved = solvedQuestions.has(q.question_id);
            const topicsHTML = q.topics.map(t => `<span class="topic-tag">${t}</span>`).join('');
            
            const noteIconHTML = isFlagged 
            ? `<span class="material-symbols-outlined edit-comment-icon" data-id="${q.question_id}" title="Edit Note">edit_note</span>` 
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

    // <td class="col-flag">
                //     <span class="material-symbols-outlined flag-icon ${isFlagged ? 'flagged' : ''}" data-id="${q.question_id}">bookmark</span>
                // </td>

    // --- FILTER & SORT LOGIC ---

    // const applyFiltersAndSort = () => {
    //     // ***FIXED***: Directly use the timeFilter's value (which is now the correct key)
    //     const selectedTimeKey = timeFilter.value;
    //     let result = [...(companyDataMap[selectedTimeKey] || [])];

    //     // Apply other filters
    //     const selectedTopics = Array.from(topicsDropdown.querySelectorAll('input:checked')).map(cb => cb.value);
    //     if (selectedTopics.length > 0) result = result.filter(q => selectedTopics.every(topic => q.topics.includes(topic)));
    //     if (flaggedFilter.checked) result = result.filter(q => flaggedQuestions.has(q.question_id));
    //     if (solvedFilter.checked) result = result.filter(q => solvedQuestions.has(q.question_id));

    //     // Apply sorting
    //     const difficultyMap = { 'EASY': 1, 'MEDIUM': 2, 'HARD': 3 };
    //     if (currentSortColumn) {
    //         result.sort((a, b) => {
    //             let valA, valB;
    //             switch (currentSortColumn) {
    //                 case 'difficulty':
    //                     valA = difficultyMap[a.difficulty] || 0;
    //                     valB = difficultyMap[b.difficulty] || 0;
    //                     break;
    //                 case 'acceptance':
    //                     valA = a.acceptance_rate;
    //                     valB = b.acceptance_rate;
    //                     break;
    //                 case 'frequency':
    //                     valA = a.frequency;
    //                     valB = b.frequency;
    //                     break;
    //                 case 'flagged':
    //                     valA = flaggedQuestions.has(a.question_id) ? 1 : 0;
    //                     valB = flaggedQuestions.has(b.question_id) ? 1 : 0;
    //                     break;
    //                 case 'solved':
    //                     valA = solvedQuestions.has(a.question_id) ? 1 : 0;
    //                     valB = solvedQuestions.has(b.question_id) ? 1 : 0;
    //                     break;
    //                 default: return 0;
    //             }
    //             return currentSortDirection === 'asc' ? valA - valB : valB - valA;
    //         });
    //     }

    //     filteredAndSortedQuestions = result;
    //     currentPage = 1;
    //     displayCurrentPage();
    // };

    const applyFiltersAndSort = () => {
        const selectedTimeKey = timeFilter.value;
        let result = [...(companyDataMap[selectedTimeKey] || [])];

        // Apply other filters
        const selectedTopics = Array.from(topicsDropdown.querySelectorAll('input:checked')).map(cb => cb.value);
        if (selectedTopics.length > 0) result = result.filter(q => selectedTopics.every(topic => q.topics.includes(topic)));
        
        // ***FIXED***: Use flaggedQuestionsMap for filtering
        if (flaggedFilter.checked) result = result.filter(q => flaggedQuestionsMap.has(q.question_id));
        
        if (solvedFilter.checked) result = result.filter(q => solvedQuestions.has(q.question_id));

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
                        // ***FIXED***: Use flaggedQuestionsMap for sorting
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

    // ***FIXED***: Removed the unused `sortBy` element.
    [timeFilter, flaggedFilter, solvedFilter].forEach(el => {
        el.addEventListener('change', applyFiltersAndSort);
    });
    
    pageSizeSelector.addEventListener('change', (e) => {
        questionsPerPage = parseInt(e.target.value, 10);
        applyFiltersAndSort();
    });
    
    // // Switch companies and reload data
    // companyFilter.addEventListener('change', async () => {
    //     const selectedCompany = companyFilter.value;
    //     if (!selectedCompany) return;

    //     questionTableBody.innerHTML = `<tr><td colspan="7" style="text-align:center; padding: 2rem;">Loading questions for ${selectedCompany}...</td></tr>`;

    //     try {
    //         // ***FIXED***: Corrected the fetch URL with the port.
    //         const response = await fetch(`http://127.0.0.1/company-questions/?company_name=${selectedCompany}`);
    //         if (!response.ok) throw new Error(`HTTP ${response.status}`);
    //         const data = await response.json();

    //         localStorage.setItem('selectedCompany', selectedCompany);
    //         localStorage.setItem('companyData', JSON.stringify(data));
            
    //         // ***FIXED***: Call the refactored function instead of re-initializing the whole app.
    //         processCompanyData(data);
    //     } catch (err) {
    //         console.error(`Failed to fetch company data:`, err);
    //         showErrorMessage(`Could not load data for ${selectedCompany}.`);
    //     }
    // });

    // Switch companies and reload data
    companyFilter.addEventListener('change', async () => {
        const selectedCompany = companyFilter.value;
        if (!selectedCompany) return;

        questionTableBody.innerHTML = `<tr><td colspan="7" style="text-align:center; padding: 2rem;">Loading questions for ${selectedCompany}...</td></tr>`;

        try {
            const response = await fetch(`/company-questions/?company_name=${selectedCompany}`);
            if (!response.ok) throw new Error(`HTTP ${response.status}`);
            const data = await response.json();

            localStorage.setItem('selectedCompany', selectedCompany);
            localStorage.setItem('companyData', JSON.stringify(data));

            // --- START: NEW CODE TO RESET SORT ORDER ---

            // 1. Set the new default sort state
            currentSortColumn = 'frequency';
            currentSortDirection = 'desc'; 

            // 2. Update the UI icons to reflect this change
            //    First, remove 'active' from all sort icons
            document.querySelectorAll('.sortable .material-symbols-outlined').forEach(icon => {
                icon.classList.remove('active');
            });

            //    Then, add 'active' to the specific icon for ascending frequency
            const newActiveIcon = document.querySelector('.sortable[data-sort="frequency"] .material-symbols-outlined[data-direction="asc"]');
            if (newActiveIcon) {
                newActiveIcon.classList.add('active');
            }

            // --- END: NEW CODE TO RESET SORT ORDER ---

            // Now, process the data. It will use the new sort settings automatically.
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
    // questionTableBody.addEventListener('click', (e) => {
    //     const target = e.target;
    //     const id = parseInt(target.dataset.id, 10);
    //     if (!id) return;

    //     if (target.classList.contains('flag-icon')) {
    //         flaggedQuestions.has(id) ? flaggedQuestions.delete(id) : flaggedQuestions.add(id);
    //         localStorage.setItem('flaggedQuestions', JSON.stringify([...flaggedQuestions]));
    //         if (flaggedFilter.checked) applyFiltersAndSort(); // Re-filter if view is active
    //         else target.classList.toggle('flagged');
    //     } else if (target.classList.contains('solved-icon')) {
    //         solvedQuestions.has(id) ? solvedQuestions.delete(id) : solvedQuestions.add(id);
    //         localStorage.setItem('solvedQuestions', JSON.stringify([...solvedQuestions]));
    //         if (solvedFilter.checked) applyFiltersAndSort(); // Re-filter if view is active
    //         else target.classList.toggle('solved');
    //     }
    // });

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
        } else if (target.classList.contains('solved-icon')) {
            // ***FIXED***: Use the correct variable 'questionId' instead of 'id'
            if (solvedQuestions.has(questionId)) {
                solvedQuestions.delete(questionId);
            } else {
                solvedQuestions.add(questionId);
            }
            localStorage.setItem('solvedQuestions', JSON.stringify([...solvedQuestions]));
            
            if (solvedFilter.checked) {
                applyFiltersAndSort();
            } else {
                target.classList.toggle('solved');
            }
        } else if (target.classList.contains('edit-comment-icon')) {
            openCommentModal(questionId);
        }
});
    // // Column Header Sorting
    // // ***FIXED***: Removed the duplicate event listener block.
    // document.querySelectorAll('.sortable .sort-icon').forEach(icon => {
    //     icon.addEventListener('click', (e) => {
    //         const th = e.target.closest('.sortable');
    //         const sortType = th.dataset.sort;
    //         const direction = e.target.dataset.direction;

    //         document.querySelectorAll('.sort-icon').forEach(i => i.classList.remove('active'));
    //         e.target.classList.add('active');

    //         currentSortColumn = sortType;
    //         currentSortDirection = direction;
    //         applyFiltersAndSort();
    //     });
    // });

    // --- COLUMN HEADER SORTING ---
    // This selector specifically targets the arrow icons inside any header with the "sortable" class.
    document.querySelectorAll('.sortable .material-symbols-outlined').forEach(icon => {
        icon.addEventListener('click', (e) => {
            const th = e.target.closest('.sortable');
            if (!th) return; // Exit if the parent header isn't found

            const sortType = th.dataset.sort;
            const direction = e.target.dataset.direction;

            // --- Visual Feedback ---
            // First, remove the 'active' class from all sorting icons
            document.querySelectorAll('.sortable .material-symbols-outlined').forEach(i => {
                i.classList.remove('active');
            });
            // Then, add the 'active' class only to the icon that was clicked
            e.target.classList.add('active');

            // --- Update State & Re-render Table ---
            currentSortColumn = sortType;
            currentSortDirection = direction;
            applyFiltersAndSort(); // This triggers the table to re-sort and re-render
        });
    });

    // Header Checkbox Filters
    solvedHeaderCheckbox.addEventListener('change', () => {
        solvedFilter.checked = solvedHeaderCheckbox.checked;
        applyFiltersAndSort();
    });
    flaggedHeaderCheckbox.addEventListener('change', () => {
        flaggedFilter.checked = flaggedHeaderCheckbox.checked;
        applyFiltersAndSort();
    });

    // ***ADD NEW LISTENERS*** for the modal at the end of your script

    saveCommentBtn.addEventListener('click', () => {
        if (currentEditingQuestionId !== null) {
            const newComment = commentTextarea.value.trim();
            flaggedQuestionsMap.set(currentEditingQuestionId, newComment);
            localStorage.setItem('flaggedQuestionsMap', JSON.stringify(Object.fromEntries(flaggedQuestionsMap)));
            closeCommentModal();
        }
    });

    cancelCommentBtn.addEventListener('click', closeCommentModal);
    commentModal.addEventListener('click', (e) => {
        if (e.target === commentModal) { // Close if clicking on the overlay
            closeCommentModal();
        }
    });
    
    // --- RUN ---
    initializeApp();
});


// --- SETTINGS MODAL (Unchanged) ---
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

