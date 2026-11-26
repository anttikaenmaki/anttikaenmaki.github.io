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
 *   - Numbering of items is provided by <ol> browser-generated numbers, or
 *     explicitly by <li value="27">. The publications page sets each value
 *     to the paper's key in papers.json.
 *
 * CSS Requirements: none.
 *   - Non-matching <li> elements get the HTML hidden attribute, which the
 *     browser renders as display: none. components.sass adds the guard
 *     #items > li[hidden] { display: none !important; } so that a rule
 *     setting display on list items cannot make a hidden item visible.
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
 *     - Any whitespace counts as a space: in the query (e.g. the
 *       non-breaking space that Option+Space types on a Mac) and in the
 *       items (e.g. the non-breaking spaces between coauthor names, so that
 *       '"Bárány and I. Kolossváry"' matches).
 *   - Checkboxes:
 *     - On pages with .filter-checkbox elements, only publications matching
 *       checked filters are shown.
 *     - Checkboxes are grouped by their value prefix (e.g. status-*, topic-*).
 *       Within a group the checked values are OR-ed; across groups the result
 *       is AND-ed. A group with no checked box is ignored, so e.g. checking
 *       "ergodic theory" narrows the checked statuses instead of doing nothing.
 *     - Checkboxes with the same value (e.g. status-publication) are
 *       synchronized (checking one checks all).
 *   - No Checkboxes:
 *     - On pages without .filter-checkbox, all publications matching the query 
 *       are shown.
 *   - Numbering: By default (count=hidden) every item keeps its number, so a
 *     search can show e.g. 41, 29, 28, 27. With count=display the visible
 *     items are renumbered 4, 3, 2, 1. Before hiding anything, the script
 *     gives every <li> an explicit value attribute holding the number it had
 *     when the page loaded, because an item hidden with display: none drops
 *     out of the <ol> numbering; count=display rewrites these values after
 *     each search.
 *   - ESC Key:
 *     - Clears #search-input, triggers search, and refocuses input.
 *   - Debouncing:
 *     - 200ms delay on input events to optimize performance. The delayed
 *       search reads #search-input when it runs, so a search still pending
 *       when ESC is pressed cannot bring the old results back.
 *
 * Integration:
 *   - Include in site via <script defer src="path/to/search.js"></script> in
 *     HTML.
 *   - No external dependencies (pure JavaScript).
 *   - Ensure there are <li> elements with appropriate classes in #items.
 *   - Select count mode via URL parameter: ?count=hidden (hidden items are
 *     still counted, so the numbers stay) is the default; ?count=display
 *     counts only the displayed items, so searches renumber them. Loading the
 *     file with search.js?count=display overrides the default. Visiting the
 *     site with publications?count=hidden or publications?count=display
 *     overrides the parameter specified in script src.
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
 *     - Visit with ?search=dimension -> searches for 'dimension'.
 *     - Visit with ?count=display -> searches renumber the visible items;
 *       without it they keep their original numbers.
 */

// Signal to CSS that JavaScript is running: basic.sass reveals .javascript
// elements (the search UI) via "html.js" instead of @media (scripting: enabled),
// which older browsers do not support.
document.documentElement.classList.add('js');

// document.currentScript is only valid during initial evaluation, never inside
// event handlers, so the script-src count parameter must be captured here.
const SCRIPT_URL = document.currentScript && document.currentScript.src
    ? new URL(document.currentScript.src, document.baseURI || window.location.href)
    : null;

// Count mode: 'hidden' (the default) still counts the hidden items, so every
// item keeps its number; 'display' counts only the displayed items, so a
// search renumbers them. A count parameter in the page URL overrides one in
// the script src.
const COUNT_MODE = (() => {
    const pageCount = new URLSearchParams(window.location.search).get('count');
    if (pageCount === 'hidden' || pageCount === 'display') return pageCount;
    return SCRIPT_URL && SCRIPT_URL.searchParams.get('count') === 'display' ? 'display' : 'hidden';
})();

// Lowercase, drop diacritics, and turn every run of whitespace into a single
// space. The coauthor lines join names with non-breaking spaces, so without
// the last step the phrase "Bárány and I. Kolossváry" could never match.
function normalizeText(text) {
    return text.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '').replace(/\s+/g, ' ');
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
        } else if (/\s/.test(char) && !inQuotes) { // any whitespace, e.g. Option+Space on a Mac
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

    // Group checkboxes by value prefix (e.g. "status", "topic"). Each group
    // with at least one checked box must be matched; the rest are ignored.
    let filterGroups = {};
    Array.from(filterCheckboxes).forEach(checkbox => {
        let prefix = checkbox.value.split('-')[0];
        (filterGroups[prefix] = filterGroups[prefix] || []).push(checkbox);
    });
    let activeGroups = Object.values(filterGroups)
        .map(group => group.filter(checkbox => checkbox.checked).map(checkbox => checkbox.value))
        .filter(checkedValues => checkedValues.length > 0);

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
        let matchesFilter = filterCheckboxes.length === 0 ||
                   (activeGroups.length > 0 && activeGroups.every(checkedValues =>
                       checkedValues.some(filter => articleClasses.includes(filter))));

        if (!matchesFilter) {
            article.hidden = true;
            return;
        }

        if (terms.length === 0 || (terms.length === 1 && terms[0].value === '')) {
            article.hidden = false;
            return;
        }

        let matchesQuery = orGroups.some(group => {
            if (group.length === 0) return false;
            return group.every(term => {
                if (term.value === 'AND' || term.value === '&&') return true;
                return matchesTerm(articleText, term);
            });
        });

        article.hidden = !matchesQuery;
    });
}

// Give every item an explicit value attribute holding the number it has when
// the page loads: the value set in the HTML if there is one, otherwise the
// number the <ol> gives its position. This must run before anything is
// hidden, because an item hidden with display: none drops out of the <ol>
// numbering: without explicit values the visible items would be renumbered.
function freezeNumbers(list, articles) {
    let step = list.reversed ? -1 : 1;
    let next = list.hasAttribute('start') ? list.start : list.reversed ? articles.length : 1;
    articles.forEach(article => {
        let own = parseInt(article.getAttribute('value'), 10);
        article.value = Number.isNaN(own) ? next : own;
        next = article.value + step;
    });
}

// count=display: number the visible items consecutively, counting down in a
// reversed list (4, 3, 2, 1) and up otherwise.
function renumberVisible(list, articles) {
    let visible = articles.filter(article => !article.hidden);
    let step = list.reversed ? -1 : 1;
    let first = list.hasAttribute('start') ? list.start : list.reversed ? visible.length : 1;
    visible.forEach((article, i) => {
        article.value = first + i * step;
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
    const list = document.getElementById('items');
    if (!searchInput || !list) return; // page without a search bar or a list

    // The list's own items only: an <li> of a list nested inside an item is
    // not an item.
    const articles = Array.from(document.querySelectorAll('#items > li'));
    const urlParams = new URLSearchParams(window.location.search);
    searchInput.value = urlParams.get('search') || '';

    freezeNumbers(list, articles);

    // Every search reads #search-input when it runs, never a copy taken
    // earlier.
    const runSearch = () => {
        searchArticles(searchInput.value, articles, document.querySelectorAll('.filter-checkbox'));
        if (COUNT_MODE === 'display') renumberVisible(list, articles);
    };

    runSearch();

    // Apply debouncing to input event. The delayed search reads the input
    // when it fires, so one still pending when ESC is pressed finds the box
    // empty instead of bringing the old results back.
    const debouncedSearch = debounce(runSearch, 200);

    searchInput.addEventListener('input', debouncedSearch);

    // Clear search input on ESC key and refocus
    searchInput.addEventListener('keydown', (event) => {
        if (event.key === 'Escape') {
            searchInput.value = '';
            runSearch();
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

            runSearch();
        }
    });
});