// common.js - Shared components and utilities for all pages

// Configuration object for navigation links
const NAV_CONFIG = [
    { href: '/home', icon: 'home', label: 'Home', id: 'home' },
    { href: '/filters', icon: 'filter_alt', label: 'Filters', id: 'filters' },
    // { href: '/stats', icon: 'analytics', label: 'Statistics', id: 'stats' },
    { href: '/about', icon: 'info', label: 'About', id: 'about' }
    // Add new pages here as needed
];

const GITHUB_URL = 'https://github.com/br0hit/companyq';

/**
 * Generates the sidebar HTML
 * @param {string} activePageId - The ID of the currently active page
 * @returns {string} HTML string for the sidebar
 */
function generateSidebar(activePageId) {
    const navLinks = NAV_CONFIG.map(link => `
        <li>
            <a href="${link.href}" ${link.id === activePageId ? 'class="active"' : ''}>
                <span class="material-symbols-outlined">${link.icon}</span> 
                ${link.label}
            </a>
        </li>
    `).join('');

    return `
        <nav class="sidebar">
            <div class="sidebar-header">
                <h1>CP Tracker</h1>
            </div>
            <ul class="nav-links">
                ${navLinks}
            </ul>
            <div class="sidebar-footer">
                <a href="${GITHUB_URL}" target="_blank" class="sidebar-link">
                    <svg class="github-icon" viewBox="0 0 16 16" width="20" height="20" fill="currentColor">
                        <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                    GitHub
                </a>
                <button id="settings-btn" class="settings-btn">
                    <span class="material-symbols-outlined">settings</span> Settings
                </button>
            </div>
        </nav>
    `;
}

/**
 * Generates the header HTML with theme toggle
 * @returns {string} HTML string for the header right section
 */
function generateHeaderRight() {
    return `
        <div class="header-right">
            <a href="${GITHUB_URL}" target="_blank" class="header-github-link">
                <svg class="header-github-icon" viewBox="0 0 16 16" width="24" height="24" fill="currentColor">
                    <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0016 8c0-4.42-3.58-8-8-8z"/>
                </svg>
            </a>
            <div class="theme-switcher">
                <span class="mode-text">Light</span>
                <label class="switch">
                    <input type="checkbox" id="theme-toggle">
                    <span class="slider"></span>
                </label>
                <span class="mode-text">Dark</span>
            </div>
        </div>
    `;
}

/**
 * Generates the footer HTML
 * @returns {string} HTML string for the footer
 */
function generateFooter() {
    return `
        <section class="footer-section">
            <div class="footer-content">
                <p>Made by Rohit</p>
                <p class="footer-links">
                    <a href="${GITHUB_URL}" target="_blank">GitHub</a>
                    <span class="separator">•</span>
                    <a href="${GITHUB_URL}/issues" target="_blank">Report Issues</a>
                </p>
            </div>
        </section>
    `;
}

/**
 * Generates the settings modal HTML
 * @returns {string} HTML string for the settings modal
 */
function generateSettingsModal() {
    return `
        <div id="settings-modal" class="modal-overlay hidden">
            <div class="modal-content">
                <h3>Settings</h3>
                <ul class="settings-menu">
                    <li>
                        <button id="delete-data-btn" class="delete-button">
                            <span class="material-symbols-outlined">delete_forever</span>
                            Delete all user data
                        </button>
                    </li>
                </ul>
            </div>
        </div>
    `;
}

/**
 * Initializes common components on the page
 * @param {string} activePageId - The ID of the currently active page
 */
function initializeCommonComponents(activePageId) {
    // Wait for DOM to be ready if it isn't already
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', () => insertComponents(activePageId));
    } else {
        insertComponents(activePageId);
    }
}

/**
 * Internal function to insert all components
 * @param {string} activePageId - The ID of the currently active page
 */
function insertComponents(activePageId) {
    // Insert sidebar
    const pageContainer = document.querySelector('.page-container');
    if (pageContainer) {
        const sidebarExists = pageContainer.querySelector('.sidebar');
        if (!sidebarExists) {
            pageContainer.insertAdjacentHTML('afterbegin', generateSidebar(activePageId));
        }
    }

    // Insert header right section
    const mainHeader = document.querySelector('.main-header');
    if (mainHeader) {
        const headerRightExists = mainHeader.querySelector('.header-right');
        if (!headerRightExists) {
            mainHeader.insertAdjacentHTML('beforeend', generateHeaderRight());
        }
    }

    // Insert footer at the end of main-content
    const mainContent = document.querySelector('.main-content');
    if (mainContent) {
        const footerExists = mainContent.querySelector('.footer-section');
        if (!footerExists) {
            mainContent.insertAdjacentHTML('beforeend', generateFooter());
        }
    }

    // Insert settings modal at the end of body
    const settingsModalExists = document.getElementById('settings-modal');
    if (!settingsModalExists) {
        document.body.insertAdjacentHTML('beforeend', generateSettingsModal());
    }

    // Initialize theme functionality
    initializeTheme();

    // Initialize settings modal functionality
    initializeSettingsModal();
}

/**
 * Initializes theme switching functionality
 */
function initializeTheme() {
    const themeToggle = document.getElementById('theme-toggle');
    if (!themeToggle) return;

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
}

/**
 * Initializes settings modal functionality
 */
function initializeSettingsModal() {
    const settingsBtn = document.getElementById('settings-btn');
    const settingsModal = document.getElementById('settings-modal');
    const deleteDataBtn = document.getElementById('delete-data-btn');

    if (!settingsBtn || !settingsModal || !deleteDataBtn) return;

    const openModal = () => settingsModal.classList.remove('hidden');
    const closeModal = () => settingsModal.classList.add('hidden');

    settingsBtn.addEventListener('click', openModal);

    settingsModal.addEventListener('click', (e) => {
        if (e.target === settingsModal) closeModal();
    });

    deleteDataBtn.addEventListener('click', () => {
        if (confirm("Are you sure you want to delete all your data? This action cannot be undone.")) {
            localStorage.clear();
            alert("All user data has been deleted.");
            closeModal();
            location.reload();
        }
    });
}

// Export functions for use in other scripts
if (typeof module !== 'undefined' && module.exports) {
    module.exports = {
        initializeCommonComponents,
        NAV_CONFIG,
        GITHUB_URL
    };
}