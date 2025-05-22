---
layout: page
title: Publications
permalink: /test/
---

<script>
  // Function to update the article list based on selected checkboxes
  function updateArticleList() {
    const articles = document.querySelectorAll('#papers li');
    const checkedFilters = Array.from(document.querySelectorAll('.filter-checkbox:checked')).map(cb => cb.value);

    // If no checkboxes are selected, hide all articles
    if (checkedFilters.length === 0) {
      articles.forEach(article => {
        article.style.display = 'none';
      });
      return;
    }

    // Show articles that match any of the selected filters
    articles.forEach(article => {
      const articleClasses = Array.from(article.classList);
      const matchesFilter = checkedFilters.some(filter => articleClasses.includes(filter));
      article.style.display = matchesFilter ? 'list-item' : 'none';
    });
  }

  // Set up event listeners for checkboxes
  $(document).ready(function() {
    $('.filter-checkbox').on('change', function() {
      // Sync checkboxes with the same value
      $("input[value='" + $(this).val() + "'][type='checkbox']").prop('checked', $(this).prop('checked'));
      // Update article list
      updateArticleList();
    });

    // Initial update to hide all articles if no checkboxes are selected
    updateArticleList();
  });
</script>

I have published in {% include atleast.html n=1 filter="journal" items="publication" output="number" %} journals at least 3 times in {% capture pop-journals %}{% include atleast.html n=3 filter="journal" items="publication" output="names" %}{% endcapture %}{% include checkbox.html type="journal" filters=pop-journals %}.

I have published {% include count-papers.html items="procamermathsoc,advmath" %} papers in PAMS and Advances.

I have authored {% include checkbox-status.html items="preprint" end=", " %}{% include checkbox-status.html items="publication" %} across {% include atleast.html n=1 filter="journal" items="publication" output="number" %} journals{% include checkbox-status.html items="survey" begin=", and " end=" along with related works," %} as detailed below. My research focuses on ergodic theory, fractal geometry, and geometric measure theory. I have collaborated with 42 researchers, notably with {% capture favourite-people %}{% include atleast.html n=5 output="names" %}{% endcapture %}{% include checkbox.html type="coauthor" filters=favourite-people %}, each on at least five projects. Additionally, I have co-authored at least four papers with 6 researchers, three papers with 12, and two papers with 21. For comprehensive bibliometric details, consult my [MathSciNet](https://mathscinet.ams.org/mathscinet/MRAuthorID/713182), [zbMATH Open](https://zbmath.org/authors/kaenmaki.antti), and [Google Scholar](https://scholar.google.com/citations?user=ubIXkowAAAAJ) profiles.

I have authored a total of {% include checkbox-status.html items="preprint" end=" and " %}{% include checkbox-status.html items="publication" %}, as [listed below](https://en.wikipedia.org/wiki/Open_science). {% include checkbox-status.html items="survey" begin="This compilation also includes " end=" and related works. " %}My [research](https://en.wikipedia.org/wiki/Research) primarily focuses on [ergodic theory](https://en.wikipedia.org/wiki/Ergodic_theory), [fractal geometry](https://en.wikipedia.org/wiki/Fractal), and [geometric measure theory](https://en.wikipedia.org/wiki/Geometric_measure_theory). Please be aware that the [preprint versions](https://en.wikipedia.org/wiki/Preprint) may differ from the final [published editions](https://en.wikipedia.org/wiki/Academic_journal). Throughout my career, I have collaborated with {% include atleast.html n=1 output="number" %} researchers, engaging in multiple projects with {% capture favourite-people %}{% include atleast.html n=5 output="names" %}{% endcapture %}{% include checkbox.html type="coauthor" filters=favourite-people %} with whom I have worked at least five times each. Additionally, I have co-authored at least four papers with {% include atleast.html n=4 output="number" %} researchers, at least three papers with {% include atleast.html n=3 output="number" %} researchers, and at least two papers with {% include atleast.html n=2 output="number" %} researchers. For more detailed [bibliometric information](https://en.wikipedia.org/wiki/Bibliometrics), please refer to my [MathSciNet](https://en.wikipedia.org/wiki/MathSciNet) [profile](https://mathscinet.ams.org/mathscinet/MRAuthorID/713182), [zbMATH Open](https://en.wikipedia.org/wiki/ZbMATH_Open) [profile](https://zbmath.org/authors/kaenmaki.antti), and [Google Scholar](https://en.wikipedia.org/wiki/Google_Scholar) [profile](https://scholar.google.com/citations?user=ubIXkowAAAAJ).

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
{% endfor %}{:reversed="reversed" #papers}
