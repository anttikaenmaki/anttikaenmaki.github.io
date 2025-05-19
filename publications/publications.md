---
layout: page
title: Publications
permalink: /publications/
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
  document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.filter-checkbox').forEach(checkbox => {
      checkbox.addEventListener('change', updateArticleList);
    });
    // Initial update to hide all articles if no checkboxes are selected
    updateArticleList();
  });
</script>

I have authored a total of {% capture preprint-count %}{% include count-papers.html type="preprint" %}{% endcapture %}{% if preprint-count != 0 %}{{ preprint-count }} <label for="status-preprint" class="checkbox-label">preprint{% if preprint-count != 1 %}s{% endif %}&thinsp;<input type="checkbox" id="status-preprint" value="status-preprint" class="filter-checkbox" checked></label> and {% endif %}{% include count-papers.html type="publication" %} <label for="status-publication" class="checkbox-label">publications&thinsp;<input type="checkbox" id="status-publication" value="status-publication" class="filter-checkbox" checked></label>, as [listed below](https://en.wikipedia.org/wiki/Open_science). This compilation also includes {% include count-papers.html type="survey" %} <label for="status-survey" class="checkbox-label">surveys&thinsp;<input type="checkbox" id="status-survey" value="status-survey" class="filter-checkbox" checked></label> and related works. My [research](https://en.wikipedia.org/wiki/Research) primarily focuses on [ergodic theory](https://en.wikipedia.org/wiki/Ergodic_theory), [fractal geometry](https://en.wikipedia.org/wiki/Fractal), and [geometric measure theory](https://en.wikipedia.org/wiki/Geometric_measure_theory). Please be aware that the [preprint versions](https://en.wikipedia.org/wiki/Preprint) may differ from the final [published editions](https://en.wikipedia.org/wiki/Academic_journal). Throughout my career, I have collaborated with {% include atleastn.html n=1 output="number" %} researchers, engaging in multiple projects with {% include atleastn.html n=5 output="names" %}{% for name in atleastn %}{% if forloop.index != 1 %}{% if atleastn.size == 2 %} and {% elsif forloop.last %}, and {% else %}, {% endif %}{% endif %}{% assign persondata = site.data.people[name] %}<label for="coauthor-{{ name }}" class="checkbox-label">{{ persondata.name }}&thinsp;<input type="checkbox" id="coauthor-{{ name }}" value="coauthor-{{ name }}" class="filter-checkbox"></label>{% endfor %} with whom I have worked at least five times each. Additionally, I have co-authored at least four papers with {% include atleastn.html n=4 output="number" %} researchers, at least three papers with {% include atleastn.html n=3 output="number" %} researchers, and at least two papers with {% include atleastn.html n=2 output="number" %} researchers. For more detailed [bibliometric information](https://en.wikipedia.org/wiki/Bibliometrics), please refer to my [MathSciNet](https://en.wikipedia.org/wiki/MathSciNet) [profile](https://mathscinet.ams.org/mathscinet/MRAuthorID/713182), [zbMATH Open](https://en.wikipedia.org/wiki/ZbMATH_Open) [profile](https://zbmath.org/authors/kaenmaki.antti), and [Google Scholar](https://en.wikipedia.org/wiki/Google_Scholar) [profile](https://scholar.google.com/citations?user=ubIXkowAAAAJ).

{% for paper in site.data.papers %}
{% assign paperdata = paper[1] %}
{{ paper[0] }}. {% include publication-item.html language=page.language
    status=paperdata.status 
    papername=paperdata.papername 
    arxiv=paperdata.arxiv 
    attachment=paperdata.attachment 
    attachmentfile=paperdata.attachmentfile 
    collaborators=paperdata.collaborators 
    journal=paperdata.journal 
    journaldata=paperdata.journaldata 
    doi=paperdata.doi %}
{% endfor %}{:reversed="reversed" #papers}
