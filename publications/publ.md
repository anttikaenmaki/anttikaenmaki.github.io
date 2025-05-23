---
layout: page
title: Publications
permalink: /test/
---

<script>
  $(document).ready(function() {
    // Function to normalize text by removing diacritics
    function normalizeText(text) {
      return text.normalize('NFD').replace(/[\u0300-\u036f]/g, '');
    }

    // Function to update the article list based on selected checkboxes and search terms
    function updateArticleList() {
      const articles = document.querySelectorAll('#items li');
      const checkedFilters = Array.from(document.querySelectorAll('.filter-checkbox:checked')).map(cb => cb.value);
      const searchInput = $('#search-input').val().toLowerCase().trim();
      const searchWords = searchInput.split(/\s+/).filter(word => word.length > 0).map(word => normalizeText(word));

      articles.forEach(article => {
        const articleClasses = Array.from(article.classList);
        const articleText = normalizeText(article.textContent.toLowerCase());

        // Check if the article matches any selected filters (or no filters are selected)
        const matchesFilter = checkedFilters.length === 0 || checkedFilters.some(filter => articleClasses.includes(filter));
        
        // Check if the article matches all search words
        const matchesSearch = searchWords.length === 0 || searchWords.every(word => articleText.includes(word));

        // Show article only if it matches both filter and search criteria
        article.style.display = (matchesFilter && matchesSearch) ? 'list-item' : 'none';
      });
    }

    // Set up event listeners for checkboxes
    $('.filter-checkbox').on('change', function() {
      // Sync checkboxes with the same value
      $("input[value='" + $(this).val() + "'][type='checkbox']").prop('checked', $(this).prop('checked'));
      // Update article list
      updateArticleList();
    });

    // Set up event listener for search input
    $('#search-input').on('input', function() {
      // Update article list on every keystroke
      updateArticleList();
    });

    // Initial update to hide all articles if no checkboxes are selected
    updateArticleList();
  });
</script>

I have published in {% include atleast.html n=1 filter="journal" items="publication" output="number" %} journals at least 3 times in {% capture pop-journals %}{% include atleast.html n=3 filter="journal" items="publication" output="names" %}{% endcapture %}{% include checkbox.html type="journal" filters=pop-journals checkbox="no" %}.

I have published {% include count-papers.html items="procamermathsoc,advmath" %} papers in PAMS and Advances.

I have authored {% include checkbox-status.html items="preprint" end=", " %}{% include checkbox-status.html items="publication" %} across {% include atleast.html n=1 filter="journal" items="publication" output="number" %} journals{% include checkbox-status.html items="survey" begin=", and " end=" along with related works," %} as detailed below. My research centers on ergodic theory, fractal geometry, and geometric measure theory. I have collaborated with {% include atleast.html n=1 output="number" %} researchers, notably with {% capture favourite-people %}{% include atleast.html n=5 output="names" %}{% endcapture %}{% include checkbox.html type="coauthor" filters=favourite-people checkbox="no" %}, each on at least five projects. Additionally, I have co-authored at least four papers with {% include atleast.html n=4 output="number" %} researchers, three papers with {% include atleast.html n=3 output="number" %}, and two papers with {% include atleast.html n=2 output="number" %}. For comprehensive bibliometric details, consult my [MathSciNet](https://mathscinet.ams.org/mathscinet/MRAuthorID/713182), [zbMATH Open](https://zbmath.org/authors/kaenmaki.antti), and [Google Scholar](https://scholar.google.com/citations?user=ubIXkowAAAAJ) profiles. {% include search-bar.html text="" %}

{% for paper in site.data.papers %}
{% assign paperdata = paper[1] %}
{{ paper[0] }}. {% include publication-item.html language=page.language
    status         = paperdata.status 
    papername      = paperdata.papername 
    arxiv          = paperdata.arxiv 
    attachment     = paperdata.attachment 
    attachmentfile = paperdata.attachmentfile 
    collaborators  = paperdata.collaborators 
    topic          = paperdata.topic
    journal        = paperdata.journal 
    journaldata    = paperdata.journaldata 
    doi            = paperdata.doi %}
{% endfor %}{:reversed="reversed" #items}
