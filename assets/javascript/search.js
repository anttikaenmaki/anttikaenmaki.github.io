function normalizeText(text) {
    return text.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '');
}

function parseQuery(query) {
    let terms = [];
    let currentTerm = '';
    let inQuotes = false;
    let quoteChar = null;

    for (let i = 0; i < query.length; i++) {
        let char = query[i];
        let isQuote = char === '"' || char === "'" || char === '“' || char === '”';

        if (isQuote) {
            if (inQuotes && (char === quoteChar || (char === '”' && quoteChar === '“') || (char === '“' && quoteChar === '”'))) {
                if (currentTerm.trim()) {
                    terms.push({ type: 'phrase', value: currentTerm.trim() });
                    currentTerm = '';
                }
                inQuotes = false;
                quoteChar = null;
            } else if (!inQuotes) {
                if (currentTerm.trim()) {
                    terms.push({ type: 'word', value: currentTerm.trim() });
                    currentTerm = '';
                }
                inQuotes = true;
                quoteChar = char;
            } else {
                currentTerm += char;
            }
        } else if (char === ' ' && !inQuotes) {
            if (currentTerm.trim()) {
                terms.push({ type: 'word', value: currentTerm.trim() });
                currentTerm = '';
            }
        } else {
            currentTerm += char;
        }
    }

    if (currentTerm.trim()) {
        terms.push({ type: inQuotes ? 'phrase' : 'word', value: currentTerm.trim() });
    }

    return terms;
}

function matchesTerm(text, term) {
    let normalizedText = normalizeText(text);
    let normalizedValue = normalizeText(term.value);

    if (term.type === 'phrase') {
        return normalizedText.includes(normalizedValue);
    } else {
        return normalizedText.split(/\s+/).some(word => word.includes(normalizedValue));
    }
}

function searchArticles(query, articles, filterCheckboxes) {
    let terms = parseQuery(query);
    let checkedFilters = Array.from(filterCheckboxes)
        .filter(checkbox => checkbox.checked)
        .map(checkbox => checkbox.value);

    let orGroups = [];
    let currentGroup = [];

    for (let i = 0; i < terms.length; i++) {
        let term = terms[i];
        if (term.value === 'OR' || term.value === '||') {
            if (currentGroup.length > 0) {
                orGroups.push(currentGroup);
                currentGroup = [];
            }
        } else {
            currentGroup.push(term);
        }
    }
    if (currentGroup.length > 0) {
        orGroups.push(currentGroup);
    }

    if (orGroups.length === 0) {
        orGroups = [[]];
    }

    articles.forEach(article => {
        let articleText = article.textContent;
        let articleClasses = Array.from(article.classList);
        let matchesFilter = checkedFilters.length > 0 &&
                           checkedFilters.some(filter => articleClasses.includes(filter));

        if (!matchesFilter) {
            article.style.display = 'none';
            return;
        }

        if (terms.length === 0 || (terms.length === 1 && terms[0].value === '')) {
            article.style.display = '';
            return;
        }

        let matchesQuery = orGroups.some(group => {
            if (group.length === 0) return false;
            return group.every(term => {
                if (term.value === 'AND') return true;
                return matchesTerm(articleText, term);
            });
        });

        article.style.display = matchesQuery ? '' : 'none';
    });
}

// Debounce function to limit function calls
function debounce(func, delay) {
    let timeoutId;
    return function (...args) {
        clearTimeout(timeoutId);
        timeoutId = setTimeout(() => {
            func(...args);
        }, delay);
    };
}

document.addEventListener('DOMContentLoaded', () => {
    const searchInput = document.getElementById('search-input');
    const articles = document.querySelectorAll('#items li');
    const filterCheckboxes = document.querySelectorAll('.filter-checkbox');
    const urlParams = new URLSearchParams(window.location.search);
    const searchQuery = urlParams.get('search') || '';

    searchInput.value = searchQuery;

    searchArticles(searchQuery, articles, filterCheckboxes);

    // Apply debouncing to input event
    const debouncedSearch = debounce((query) => {
        searchArticles(query, articles, document.querySelectorAll('.filter-checkbox'));
    }, 200);

    searchInput.addEventListener('input', () => {
        debouncedSearch(searchInput.value);
    });

    // Clear search input on ESC key
    searchInput.addEventListener('keydown', (event) => {
        if (event.key === 'Escape') {
            searchInput.value = '';
            searchArticles('', articles, document.querySelectorAll('.filter-checkbox'));
            searchInput.blur();
        }
    });

    // Event delegation for checkbox changes with synchronization
    document.addEventListener('change', (event) => {
        if (event.target.matches('.filter-checkbox')) {
            const value = event.target.value;
            const isChecked = event.target.checked;

            // Synchronize checkboxes with the same value
            document.querySelectorAll(`.filter-checkbox[value="${value}"]`).forEach(checkbox => {
                if (checkbox !== event.target) {
                    checkbox.checked = isChecked;
                }
            });

            searchArticles(searchInput.value, articles, document.querySelectorAll('.filter-checkbox'));
        }
    });
});