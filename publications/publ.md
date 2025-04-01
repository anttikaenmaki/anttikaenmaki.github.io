---
layout: page
title: Publications
permalink: /publications/test/
---

I have authored a total of 7 <label for="preprint">preprints</label> 
<input type="checkbox" id="preprint" item="paper" class="button" checked onclick="toggle(this)" />
and 49 <label for="publication">publications</label> 
<input type="checkbox" id="publication" item="paper" class="button" checked onclick="toggle(this)" />
and 7 <label for="survey">surveys</label> 
<input type="checkbox" id="survey" item="paper" class="button" onclick="toggle(this)" />

<script>
function toggle(button) {
  // change the status of the clicked checkbox
  var checkbox = document.getElementById(button.id);
  if (checkbox.checked == true) {
    checkbox.classList.remove("active");
  } else {
    checkbox.classList.add("active");
  }
  // show the list elements according to the checked status
  const buttons = document.getElementsByClassName("button");
  let item = event.target.getAttribute("item");
  const papers = document.getElementsByClassName(item);
  for (let i = 0; i < papers.length; i++) {
    papers[i].style.display = "none";
    for (let j = 0; j < buttons.length; j++) {
      if (document.getElementById(buttons[j].id).checked == true) {
        if (Array.from(papers[i].classList).includes(buttons[j].id)) {
          papers[i].style.display = "list-item";
          break;
        }
      }
    }
  }
}
</script>


I have authored a total of {% include paper-button.html type="preprint" %}{% include paper-button.html type="publication" %}, as [listed below](https://en.wikipedia.org/wiki/Open_science). This compilation also includes {% include paper-button.html type="survey" %} and related works. My [research](https://en.wikipedia.org/wiki/Research) primarily focuses on [ergodic theory](https://en.wikipedia.org/wiki/Ergodic_theory), [fractal geometry](https://en.wikipedia.org/wiki/Fractal), and [geometric measure theory](https://en.wikipedia.org/wiki/Geometric_measure_theory). Please be aware that the [preprint versions](https://en.wikipedia.org/wiki/Preprint) may differ from the final [published editions](https://en.wikipedia.org/wiki/Academic_journal). Throughout my career, I have collaborated with {% include atleastn.html n=1 output="number" %} researchers, engaging in multiple projects with {% include atleastn.html n=5 output="names" %} with whom I have worked at least five times each. Additionally, I have co-authored at least four papers with {% include atleastn.html n=4 output="number" %} researchers, at least three papers with {% include atleastn.html n=3 output="number" %} researchers, and at least two papers with {% include atleastn.html n=2 output="number" %} researchers. For more detailed [bibliometric information](https://en.wikipedia.org/wiki/Bibliometrics), please refer to my [MathSciNet](https://en.wikipedia.org/wiki/MathSciNet) [profile](https://mathscinet.ams.org/mathscinet/MRAuthorID/713182), [zbMATH Open](https://en.wikipedia.org/wiki/ZbMATH_Open) [profile](https://zbmath.org/authors/kaenmaki.antti), and [Google Scholar](https://en.wikipedia.org/wiki/Google_Scholar) [profile](https://scholar.google.com/citations?user=ubIXkowAAAAJ).

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
    doi=paperdata.doi %}
{% endfor %}{:reversed="reversed"}
