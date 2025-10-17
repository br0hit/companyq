document.addEventListener('DOMContentLoaded', async () => {
    
    


    // --- ELEMENTS ---
    const themeToggle = document.getElementById('theme-toggle');
    const body = document.body;
    const companyGrid = document.getElementById('company-grid');
    const searchInput = document.getElementById('search-company');
    
    // Try to load cached companies from localStorage
    // let companies = JSON.parse(localStorage.getItem('companiesList')) || [];

    {
        try {
            const response = await fetch("/companies/");
            const data = await response.json();
            companies = data.map(item => item.name);
            localStorage.setItem('companiesList', JSON.stringify(companies));
        } catch (err) {
            console.error("Failed to fetch companies:", err);
            companyGrid.innerHTML = `<p style="color:red;">Could not load companies.</p>`;
            return;
        }
    }

    // Modal elements
    const settingsBtn = document.getElementById('settings-btn');
    const settingsModal = document.getElementById('settings-modal');
    const deleteDataBtn = document.getElementById('delete-data-btn');

    // --- THEME SWITCHER LOGIC ---
    const applyTheme = (theme) => {
        if (theme === 'dark') {
            body.classList.add('dark-mode');
            themeToggle.checked = true;
        } else {
            body.classList.remove('dark-mode');
            themeToggle.checked = false;
        }
    };
    const savedTheme = localStorage.getItem('theme') || 'dark';
    applyTheme(savedTheme);

    themeToggle.addEventListener('change', () => {
        const newTheme = themeToggle.checked ? 'dark' : 'light';
        localStorage.setItem('theme', newTheme);
        applyTheme(newTheme);
    });

    // // --- COMPANY GRID RENDERING ---
    // const renderCompanies = (companyList) => {
    //     companyGrid.innerHTML = '';
    //     if (companyList.length === 0) {
    //         companyGrid.innerHTML = `<p class="no-results">No companies found.</p>`;
    //         return;
    //     }
    //     // companyList.forEach(company => {
    //     //     const companyCell = document.createElement('a');
    //     //     companyCell.href = "#";
    //     //     companyCell.className = 'company-cell';
    //     //     companyCell.textContent = company;
    //     //     companyGrid.appendChild(companyCell);
    //     // });
    //     companyList.forEach(company => {
    //     const companyCell = document.createElement('a');
    //     companyCell.href = "filters.html";
    //     companyCell.className = 'company-cell';
    //     companyCell.textContent = company;

    //     // When clicked, fetch question data and store locally
    //     companyCell.addEventListener('click', async (e) => {
    //         e.preventDefault(); // prevent immediate navigation
    //         try {
    //             // API URL placeholder (you'll fill this later)
    //             const response = await fetch(`http://127.0.0.1/company-questions/?company_name=${company}`);
    //             if (!response.ok) throw new Error(`HTTP ${response.status}`);
    //             const data = await response.json();

    //             // Store company name and its data in localStorage
    //             localStorage.setItem('selectedCompany', company);
    //             localStorage.setItem('companyData', JSON.stringify(data));

    //             // Navigate to filters page after storing
    //             window.location.href = 'filters.html';
    //         } catch (err) {
    //             console.error('Failed to fetch company questions:', err);
    //             alert(`Could not load questions for ${company}`);
    //         }
    //     });

    //     companyGrid.appendChild(companyCell);
    //     });

    // };


    // --- COMPANY GRID RENDERING ---
    const renderCompanies = (companyList) => {
        // 1. Clear the grid of any existing companies
        companyGrid.innerHTML = ''; 

        // 2. Check if the filtered list is empty
        if (companyList.length === 0) {
            companyGrid.innerHTML = `<p class="no-results">No companies found.</p>`;
            return; // Stop the function here
        }

        // 3. If not empty, render the new list
        companyList.forEach(company => {
            const companyCell = document.createElement('a');
            companyCell.href = "filters.html";
            companyCell.className = 'company-cell';
            companyCell.textContent = company;

            // When clicked, fetch question data and store locally
            companyCell.addEventListener('click', async (e) => {
                e.preventDefault(); // prevent immediate navigation
                try {
                    // API URL placeholder (you'll fill this later)
                    const response = await fetch(`/company-questions/?company_name=${company}`);
                    if (!response.ok) throw new Error(`HTTP ${response.status}`);
                    const data = await response.json();

                    // Store company name and its data in localStorage
                    localStorage.setItem('selectedCompany', company);
                    localStorage.setItem('companyData', JSON.stringify(data));

                    // Navigate to filters page after storing
                    window.location.href = 'filters.html';
                } catch (err) {
                    console.error('Failed to fetch company questions:', err);
                    alert(`Could not load questions for ${company}`);
                }
            });

            companyGrid.appendChild(companyCell);
        });
    };
    renderCompanies(companies);
    
    // --- SEARCH FUNCTIONALITY ---
    searchInput.addEventListener('input', (e) => {
        const searchTerm = e.target.value.toLowerCase().trim();
        const filteredCompanies = companies.filter(company => 
            company.toLowerCase().includes(searchTerm)
        );
        renderCompanies(filteredCompanies);
    });

    // --- SETTINGS MODAL LOGIC (New Addition) ---
    // Function to open the modal
    const openModal = () => {
        settingsModal.classList.remove('hidden');
    };

    // Function to close the modal
    const closeModal = () => {
        settingsModal.classList.add('hidden');
    };

    // Event listener to open the modal when the settings button is clicked
    settingsBtn.addEventListener('click', openModal);

    // Event listener to close the modal if the user clicks on the overlay
    settingsModal.addEventListener('click', (e) => {
        // We only close if the user clicked the overlay itself, not the content inside
        if (e.target === settingsModal) {
            closeModal();
        }
    });

    // Event listener for the "Delete all user data" button
    deleteDataBtn.addEventListener('click', () => {
        const confirmation = confirm(
            "Are you sure you want to delete all your data? This action cannot be undone."
        );
        
        if (confirmation) {
            // If user confirms, proceed with deletion logic
            console.log("User confirmed. Deleting data...");
            // In a real application, you would make an API call here to delete data.
            localStorage.clear();
            alert("All user data has been deleted.");
            closeModal(); // Close the modal after action
        } else {
            // If user cancels, do nothing
            console.log("User cancelled the action.");
        }
    });

    // --- CLEAR COMPANIES LIST WHEN USER CLOSES TAB / WEBSITE ---
    // window.addEventListener('beforeunload', () => {
    //     localStorage.removeItem('companiesList');
    // });

});