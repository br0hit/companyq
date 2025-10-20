// stats.js - Statistics page functionality using localStorage

document.addEventListener('DOMContentLoaded', async () => {
    // Initialize common components
    initializeCommonComponents('stats');
    
    // Load data from localStorage
    const solvedQuestions = new Set(JSON.parse(localStorage.getItem('solvedQuestions')) || []);
    const storedFlags = JSON.parse(localStorage.getItem('flaggedQuestionsMap')) || {};
    const flaggedQuestionsMap = new Map(Object.entries(storedFlags).map(([key, value]) => [parseInt(key, 10), value]));
    const companyData = JSON.parse(localStorage.getItem('companyData'));
    const selectedCompany = localStorage.getItem('selectedCompany');
    
    // Get all questions from company data
    let allQuestions = [];
    if (companyData && companyData.time_periods) {
        // Flatten all questions from all time periods
        Object.values(companyData.time_periods).forEach(questions => {
            questions.forEach(q => {
                // Avoid duplicates
                if (!allQuestions.find(existing => existing.question_id === q.question_id)) {
                    allQuestions.push(q);
                }
            });
        });
    }
    
    // Calculate statistics
    const stats = calculateStatistics(solvedQuestions, flaggedQuestionsMap, allQuestions);
    
    // Render all sections
    renderSummaryCards(stats);
    renderDifficultyBreakdown(stats);
    renderRecentActivity(solvedQuestions, flaggedQuestionsMap, allQuestions);
    renderTopTopics(stats);
    renderFlaggedQuestions(flaggedQuestionsMap, allQuestions);
    
    // Add animation to bars
    setTimeout(() => {
        animateBars(stats);
    }, 100);
});

/**
 * Calculate all statistics from localStorage data
 */
function calculateStatistics(solvedQuestions, flaggedQuestionsMap, allQuestions) {
    // Get solved questions with details
    const solvedQuestionsDetails = allQuestions.filter(q => solvedQuestions.has(q.question_id));
    
    // Count by difficulty
    const easyCount = solvedQuestionsDetails.filter(q => q.difficulty === 'EASY').length;
    const mediumCount = solvedQuestionsDetails.filter(q => q.difficulty === 'MEDIUM').length;
    const hardCount = solvedQuestionsDetails.filter(q => q.difficulty === 'HARD').length;
    const totalSolved = solvedQuestionsDetails.length;
    
    // Count notes (flagged questions with actual notes)
    const notesCount = Array.from(flaggedQuestionsMap.values()).filter(note => note && note.trim()).length;
    
    // Calculate topic statistics
    const topicCounts = {};
    solvedQuestionsDetails.forEach(q => {
        q.topics.forEach(topic => {
            topicCounts[topic] = (topicCounts[topic] || 0) + 1;
        });
    });
    
    // Sort topics by count
    const sortedTopics = Object.entries(topicCounts)
        .sort((a, b) => b[1] - a[1])
        .slice(0, 10); // Top 10 topics
    
    // Companies explored (for now just 1, but can be extended)
    const companiesExplored = localStorage.getItem('selectedCompany') ? 1 : 0;
    
    return {
        totalSolved,
        easyCount,
        mediumCount,
        hardCount,
        flaggedCount: flaggedQuestionsMap.size,
        notesCount,
        companiesExplored,
        sortedTopics,
        solvedQuestionsDetails
    };
}

/**
 * Render summary cards
 */
function renderSummaryCards(stats) {
    document.getElementById('total-solved').textContent = stats.totalSolved;
    document.getElementById('total-flagged').textContent = stats.flaggedCount;
    document.getElementById('companies-explored').textContent = stats.companiesExplored;
    document.getElementById('total-notes').textContent = stats.notesCount;
}

/**
 * Render difficulty breakdown with bars and pie chart
 */
function renderDifficultyBreakdown(stats) {
    // Update counts
    document.getElementById('easy-count').textContent = stats.easyCount;
    document.getElementById('medium-count').textContent = stats.mediumCount;
    document.getElementById('hard-count').textContent = stats.hardCount;
    
    // Calculate percentages
    const total = stats.totalSolved || 1; // Avoid division by zero
    const easyPercent = (stats.easyCount / total) * 100;
    const mediumPercent = (stats.mediumCount / total) * 100;
    const hardPercent = (stats.hardCount / total) * 100;
    
    // Store percentages for animation
    document.getElementById('easy-bar').dataset.percentage = easyPercent.toFixed(1);
    document.getElementById('medium-bar').dataset.percentage = mediumPercent.toFixed(1);
    document.getElementById('hard-bar').dataset.percentage = hardPercent.toFixed(1);
    
    // Render pie chart
    renderPieChart(stats);
}

/**
 * Animate progress bars
 */
function animateBars(stats) {
    const easyBar = document.getElementById('easy-bar');
    const mediumBar = document.getElementById('medium-bar');
    const hardBar = document.getElementById('hard-bar');
    
    const easyPercent = parseFloat(easyBar.dataset.percentage);
    const mediumPercent = parseFloat(mediumBar.dataset.percentage);
    const hardPercent = parseFloat(hardBar.dataset.percentage);
    
    easyBar.style.width = `${easyPercent}%`;
    easyBar.textContent = stats.easyCount > 0 ? `${easyPercent.toFixed(0)}%` : '';
    
    mediumBar.style.width = `${mediumPercent}%`;
    mediumBar.textContent = stats.mediumCount > 0 ? `${mediumPercent.toFixed(0)}%` : '';
    
    hardBar.style.width = `${hardPercent}%`;
    hardBar.textContent = stats.hardCount > 0 ? `${hardPercent.toFixed(0)}%` : '';
}

/**
 * Render pie chart
 */
function renderPieChart(stats) {
    const pieContainer = document.getElementById('difficulty-pie');
    
    if (stats.totalSolved === 0) {
        pieContainer.innerHTML = '<p style="color: var(--text-muted); text-align: center;">No data yet. Start solving!</p>';
        return;
    }
    
    const total = stats.totalSolved;
    const easyDeg = (stats.easyCount / total) * 360;
    const mediumDeg = easyDeg + (stats.mediumCount / total) * 360;
    
    pieContainer.innerHTML = `
        <div class="pie-chart" style="--easy-deg: ${easyDeg}deg; --medium-deg: ${mediumDeg}deg;">
            <div class="pie-center">
                <div class="pie-center-number">${stats.totalSolved}</div>
                <div class="pie-center-label">Solved</div>
            </div>
        </div>
    `;
}

/**
 * Render recent activity
 */
function renderRecentActivity(solvedQuestions, flaggedQuestionsMap, allQuestions) {
    const activityContent = document.getElementById('activity-content');
    
    if (solvedQuestions.size === 0 && flaggedQuestionsMap.size === 0) {
        activityContent.innerHTML = `
            <div class="no-activity">
                <span class="material-symbols-outlined">inbox</span>
                <p>No activity yet. Start solving questions to see your progress!</p>
            </div>
        `;
        return;
    }
    
    const activities = [];
    
    // Add solved questions as activities
    solvedQuestions.forEach(qId => {
        const question = allQuestions.find(q => q.question_id === qId);
        if (question) {
            activities.push({
                type: 'solved',
                icon: 'check_circle',
                title: 'Solved a question',
                description: question.title,
                time: 'Recently' // We don't have timestamp data
            });
        }
    });
    
    // Add flagged questions as activities
    flaggedQuestionsMap.forEach((note, qId) => {
        const question = allQuestions.find(q => q.question_id === qId);
        if (question) {
            activities.push({
                type: 'flagged',
                icon: 'bookmark',
                title: 'Flagged a question',
                description: question.title,
                time: 'Recently'
            });
        }
    });
    
    // Show last 10 activities
    const recentActivities = activities.slice(0, 10);
    
    activityContent.innerHTML = recentActivities.map(activity => `
        <div class="activity-item">
            <div class="activity-icon">
                <span class="material-symbols-outlined">${activity.icon}</span>
            </div>
            <div class="activity-details">
                <div class="activity-title">${activity.title}</div>
                <div class="activity-description">${activity.description}</div>
            </div>
            <div class="activity-time">${activity.time}</div>
        </div>
    `).join('');
}

/**
 * Render top topics
 */
function renderTopTopics(stats) {
    const topicsContainer = document.getElementById('topics-container');
    
    if (stats.sortedTopics.length === 0) {
        topicsContainer.innerHTML = '<p class="no-topics">No topics yet. Start solving to see your top topics!</p>';
        return;
    }
    
    topicsContainer.innerHTML = stats.sortedTopics.map(([topic, count]) => `
        <div class="topic-badge">
            <span>${topic}</span>
            <span class="topic-count">${count}</span>
        </div>
    `).join('');
}

/**
 * Render flagged questions with notes
 */
function renderFlaggedQuestions(flaggedQuestionsMap, allQuestions) {
    const flaggedContainer = document.getElementById('flagged-container');
    
    if (flaggedQuestionsMap.size === 0) {
        flaggedContainer.innerHTML = `
            <div class="no-flagged">
                <span class="material-symbols-outlined">bookmark_border</span>
                <p>No flagged questions yet. Flag important questions to review them later!</p>
            </div>
        `;
        return;
    }
    
    const flaggedQuestions = [];
    flaggedQuestionsMap.forEach((note, qId) => {
        const question = allQuestions.find(q => q.question_id === qId);
        if (question) {
            flaggedQuestions.push({ question, note });
        }
    });
    
    flaggedContainer.innerHTML = flaggedQuestions.map(({ question, note }) => `
        <div class="flagged-item">
            <div class="flagged-header">
                <a href="${question.link}" target="_blank" class="flagged-title">${question.title}</a>
                <span class="difficulty-tag difficulty-${question.difficulty} flagged-difficulty">${question.difficulty}</span>
            </div>
            ${note ? `<div class="flagged-note">${note}</div>` : ''}
        </div>
    `).join('');
}