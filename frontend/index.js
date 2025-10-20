document.addEventListener('DOMContentLoaded', async () => {
    
    // Initialize common components (sidebar, theme toggle, settings modal)
    initializeCommonComponents('home');
    
    // --- ELEMENTS ---
    const companyGrid = document.getElementById('company-grid');
    const allCompaniesDropdown = document.getElementById('all-companies-dropdown');
    const searchInput = document.getElementById('search-company');
    
    let popularCompanies = [];
    let allCompanies = [];

    // Fetch popular companies from API
    try {
        const response = await fetch("/companies/");
        const data = await response.json();
        popularCompanies = data.map(item => item.name);
    } catch (err) {
        console.error("Failed to fetch popular companies:", err);
        companyGrid.innerHTML = `<p style="color:red;">Could not load companies.</p>`;
    }

    // Fetch all companies from companies.json
    try {
        const response = await fetch("/companies.json");
        const data = await response.json();
        allCompanies = data.map(item => item.name);
    } catch (err) {
        console.error("Failed to fetch all companies:", err);
        allCompaniesDropdown.innerHTML = `<p style="color:red;">Could not load companies list.</p>`;
    }

    // --- POPULAR COMPANIES GRID RENDERING ---
    const renderPopularCompanies = (companyList) => {
        companyGrid.innerHTML = '';
        
        if (companyList.length === 0) {
            companyGrid.innerHTML = `<p class="no-results">No companies found.</p>`;
            return;
        }

        companyList.forEach(company => {
            const companyCell = document.createElement('a');
            companyCell.href = "/filters";
            companyCell.className = 'company-cell';
            companyCell.textContent = company;

            companyCell.addEventListener('click', async (e) => {
                e.preventDefault();
                try {
                    const response = await fetch(`/company-questions/?company_name=${company}`);
                    if (!response.ok) throw new Error(`HTTP ${response.status}`);
                    const data = await response.json();

                    localStorage.setItem('selectedCompany', company);
                    localStorage.setItem('companyData', JSON.stringify(data));

                    window.location.href = '/filters';
                } catch (err) {
                    console.error('Failed to fetch company questions:', err);
                    alert(`Could not load questions for ${company}`);
                }
            });

            companyGrid.appendChild(companyCell);
        });
    };

    // --- ALL COMPANIES DROPDOWN RENDERING ---
    const renderAllCompanies = (companyList) => {
        allCompaniesDropdown.innerHTML = '';
        
        if (companyList.length === 0) {
            allCompaniesDropdown.innerHTML = `<p class="no-results">No companies found.</p>`;
            return;
        }

        // Render all companies (scrollable dropdown)
        companyList.forEach(company => {
            const companyItem = document.createElement('a');
            companyItem.href = "/filters";
            companyItem.className = 'company-item';
            companyItem.textContent = company;

            companyItem.addEventListener('click', async (e) => {
                e.preventDefault();
                try {
                    const response = await fetch(`/company-questions/?company_name=${company}`);
                    if (!response.ok) throw new Error(`HTTP ${response.status}`);
                    const data = await response.json();

                    localStorage.setItem('selectedCompany', company);
                    localStorage.setItem('companyData', JSON.stringify(data));

                    window.location.href = '/filters';
                } catch (err) {
                    console.error('Failed to fetch company questions:', err);
                    alert(`Could not load questions for ${company}`);
                }
            });

            allCompaniesDropdown.appendChild(companyItem);
        });
    };

    // Initial render
    renderPopularCompanies(popularCompanies);
    renderAllCompanies(allCompanies);
    
    // --- SEARCH FUNCTIONALITY (searches all companies, shows first 5) ---
    searchInput.addEventListener('input', (e) => {
        const searchTerm = e.target.value.toLowerCase().trim();
        const filteredCompanies = allCompanies.filter(company => 
            company.toLowerCase().includes(searchTerm)
        );
        renderAllCompanies(filteredCompanies);
    });

});