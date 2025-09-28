/*
 * search.js by Antti Käenmäki
 *
 * USAGE: <script defer src="/path/to/search.js"></script>
 * 
 * Purpose:
 *   - Enables client-side search and filtering of list items (e.g. 
 *     publications) in a website.
 *   - Supports text search with OR logic, quote handling, checkbox-based 
 *     filtering, and dynamic updates.
 *
 * HTML Requirements:
 *   - <input id="search-input"> for search queries.
 *   - <ol id="items"> containing <li> elements for items (e.g. publications), 
 *     with classes for filters (e.g., topic-et, status-preprint).
 *   - Optional <input type="checkbox" class="filter-checkbox" 
 *     value="topic-et"> for filter controls.
 *
 * CSS Requirements (optional if count=display):
 *   - For count=hidden: Define .hidden { visibility: hidden; height: 0; 
 *     margin: 0 !important; padding: 0 !important; overflow: hidden; 
 *     line-height: 0; min-height: 0 !important; max-height: 0; border: none 
 *     !important; font-size: 0; position: absolute; width: 0; } to hide 
 *     non-matching <li> elements without affecting <ol> numbering and 
 *     eliminate vertical space.
 *   - For count=hidden: Define #items li.hidden p { margin: 0 !important; 
 *     padding: 0 !important; line-height: 0; min-height: 0 !important; border: 
 *     none !important; font-size: 0; } to collapse child <p> spacing.
 *   - Use #items { margin-block: 0; padding-block: 0; } to eliminate vertical 
 *     spacing while preserving horizontal alignment (required for both 
 *     count=hidden and count=display).
 * 
 * Functionality:
 *   - Search:
 *     - Searches publications based on #search-input value
 *     - Search query can be given also as URL parameter ?search=self-affine
 *     - OR logic with 'OR' or '||' (e.g. 'self-affine OR dimension').
 *     - Phrase searches with quotes (", ', “, ”, e.g. '"self-affine 
 *       measure"').
 *     - Case-insensitive and diacritic-insensitive matching (e.g. 'kaenmaki' 
 *       is 'Käenmäki').
 *   - Checkboxes:
 *     - On pages with .filter-checkbox elements, only publications matching 
 *       checked filters are shown.
 *     - Checkboxes with the same value (e.g. status-publication) are 
 *       synchronized (checking one checks all).
 *   - No Checkboxes:
 *     - On pages without .filter-checkbox, all publications matching the query 
 *       are shown.
 *   - Numbering: Preserves numbering (e.g., 65, 64, 59, ...) for visible items 
 *     in count=hidden; renumbers to 8, 7, 6, ... in count=display which is 
 *     also default.
 *   - ESC Key:
 *     - Clears #search-input, triggers search, and refocuses input.
 *   - Debouncing:
 *     - 200ms delay on input events to optimize performance.
 *
 * Integration:
 *   - Include in site via <script defer src="path/to/search.js"></script> in 
 *     HTML.
 *   - No external dependencies (pure JavaScript).
 *   - Add CSS .hidden class.
 *   - Ensure there are <li> elements with appropriate classes in #items.
 *
 * Example:
 *   HTML:
 *     <input id="search-input" type="text">
 *     <input type="checkbox" class="filter-checkbox" 
 *            value="status-publication" checked> Publications
 *     <ol id="items">
 *       <li class="status-preprint">Self-affine sponges...</li>
 *       <li class="status-publication">Dimension spectrum...</li>
 *       <li class="status-publication">Measures on self-affine...</li>
 *     </ol>
 * 
 *   Test:
 *     - Type 'dimension' with status-publication checked -> Shows second <li>.
 *     - Type 'self-affine OR dimension' with status-publication checked -> 
 *       Shows last two <li>.
 *     - Press ESC -> Clears input, refocuses, shows all items.
 *     - On a page without checkboxes, 'self-affine' shows matching items.
 *     - Visit with ?search=dimension -> 
 *     - Visit with ?count=hidden -> searches use original numbering
 */

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

    // Determine mode from URL parameter, default to 'display'
    const urlParams = new URLSearchParams(window.location.search);
    const count = urlParams.get('mode') === 'hidden' ? 'hidden' : 'display';

    articles.forEach(article => {
        let articleText = article.textContent;
        let articleClasses = Array.from(article.classList);
        let matchesFilter = filterCheckboxes.length === 0 || 
                   (checkedFilters.length > 0 && checkedFilters.some(filter => articleClasses.includes(filter)));

        if (!matchesFilter) {
            if (count === 'display') {
                article.style.display = 'none';
            } else {
                article.classList.add('hidden');
            }
            return;
        }

        if (terms.length === 0 || (terms.length === 1 && terms[0].value === '')) {
            if (count === 'display') {
                article.style.display = '';
            } else {
                article.classList.remove('hidden');
            }
            return;
        }

        let matchesQuery = orGroups.some(group => {
            if (group.length === 0) return false;
            return group.every(term => {
                if (term.value === 'AND' || term.value === '&&') return true;
                return matchesTerm(articleText, term);
            });
        });

        if (count === 'display') {
            article.style.display = matchesQuery ? '' : 'none';
        } else {
            article.classList.toggle('hidden', !matchesQuery);
        }
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

    // Clear search input on ESC key and refocus
    searchInput.addEventListener('keydown', (event) => {
        if (event.key === 'Escape') {
            searchInput.value = '';
            searchArticles('', articles, document.querySelectorAll('.filter-checkbox'));
            searchInput.focus();
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