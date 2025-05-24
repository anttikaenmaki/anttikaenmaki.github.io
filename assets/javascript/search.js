$(document).ready(function() {
  // Function to normalize text by removing diacritics
  function normalizeText(text) {
    return text.normalize('NFD').replace(/[\u0300-\u036f]/g, '');
  }

  // Function to update the article list based on selected checkboxes and search terms
  function updateArticleList() {
    const articles = document.querySelectorAll('#items li');
    const filterCheckboxes = document.querySelectorAll('.filter-checkbox');
    const checkedFilters = Array.from(document.querySelectorAll('.filter-checkbox:checked')).map(cb => cb.value);
    const searchInput = $('#search-input').length ? $('#search-input').val().toLowerCase().trim() : '';

    // Parse search input for quoted phrases and unquoted terms, split by OR/||
    const orGroups = [];
    let currentInput = searchInput;
    const quoteRegex = /"([^"]*)"/g; // Match quoted phrases
    let match;

    // Extract quoted phrases and replace them with placeholders
    const placeholders = [];
    while ((match = quoteRegex.exec(searchInput)) !== null) {
      const phrase = match[1].trim();
      if (phrase.length > 0) {
        placeholders.push(normalizeText(phrase));
        currentInput = currentInput.replace(match[0], `__PHRASE_${placeholders.length - 1}__`);
      }
    }

    // Split by OR/|| and process each group
    currentInput.split(/\s*(?:\bOR\b|\|\|)\s*/i)
      .map(group => group.trim())
      .filter(group => group.length > 0)
      .forEach(group => {
        const terms = [];
        group.split(/\s+/).forEach(word => {
          if (word.startsWith('__PHRASE_') && word.endsWith('__')) {
            const index = parseInt(word.match(/__PHRASE_(\d+)__/)[1]);
            terms.push(placeholders[index]); // Restore quoted phrase
          } else if (word.length > 0) {
            terms.push(normalizeText(word)); // Unquoted word
          }
        });
        if (terms.length > 0) {
          orGroups.push(terms);
        }
      });

    articles.forEach(article => {
      const articleClasses = Array.from(article.classList);
      const articleText = normalizeText(article.textContent.toLowerCase());

      // Check category filters; allow all if no checkboxes exist, otherwise require checked filters
      const matchesFilter = filterCheckboxes.length === 0 || 
                           (checkedFilters.length > 0 && checkedFilters.some(filter => articleClasses.includes(filter)));
      
      // Check search terms: match if any OR group has all its terms present
      const matchesSearch = orGroups.length === 0 || orGroups.some(terms => terms.every(term => articleText.includes(term)));

      // Show article only if it matches both filter and search criteria
      article.style.display = (matchesFilter && matchesSearch) ? 'list-item' : 'none';
    });
  }

  // Set up event listeners for checkboxes
  $('.filter-checkbox').on('change', function() {
    // Sync checkboxes with the same value, escaping special characters
    $("input[value='" + $.escapeSelector($(this).val()) + "'][type='checkbox']").prop('checked', $(this).prop('checked'));
    // Update article list
    updateArticleList();
  });

  // Set up event listener for search input with debouncing
  let timeout;
  $('#search-input').on('input', function() {
    clearTimeout(timeout);
    timeout = setTimeout(updateArticleList, 200); // 200ms delay
  });

  // Set up event listener for Escape key to clear search input
  $('#search-input').on('keydown', function(event) {
    if (event.key === 'Escape') {
      $(this).val(''); // Clear the input
      updateArticleList(); // Update the article list
    }
  });

  // Handle search query from URL parameter
  const urlParams = new URLSearchParams(window.location.search);
  const searchQuery = urlParams.get('search');
  if (searchQuery && $('#search-input').length) {
    $('#search-input').val(decodeURIComponent(searchQuery));
    updateArticleList();
  } else {
    // Initial update to hide all articles if no checkboxes are selected
    updateArticleList();
  }
});