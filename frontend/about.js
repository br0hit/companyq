// about.js - About page functionality

document.addEventListener('DOMContentLoaded', () => {
    // Initialize common components (sidebar, theme toggle, settings modal)
    initializeCommonComponents('about');
    
    // Add smooth scroll behavior for any internal links (if added later)
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });

    // Add animation on scroll for content cards
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '0';
                entry.target.style.transform = 'translateY(20px)';
                entry.target.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
                
                setTimeout(() => {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }, 100);
                
                observer.unobserve(entry.target);
            }
        });
    }, observerOptions);

    // Observe all sections for animation
    document.querySelectorAll('.about-section').forEach(section => {
        observer.observe(section);
    });

    // Track GitHub button clicks (optional analytics)
    document.querySelectorAll('a[href*="github.com"]').forEach(link => {
        link.addEventListener('click', () => {
            console.log('GitHub link clicked:', link.textContent);
            // You can add analytics tracking here if needed
        });
    });
});