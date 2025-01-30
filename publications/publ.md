---
layout: page
title: Publications
permalink: /publications/test/
---

I have authored a total of 7 <label for="preprint">preprints</label> 
<input type="checkbox" id="preprint" onclick="myFunction(this)">

<p id="text" style="display:none">Checkbox is CHECKED!</p>

<script>
function myFunction(button) {
  var checkBox = document.getElementById("preprint");
  var text = document.getElementById("text");
  if (checkBox.checked == true){
    text.style.display = "block";
    console.log(button.id);
    var element = document.getElementById(button.id);
    console.log(element);
    element.classList.remove("active");
  } else {
     text.style.display = "none";
//    document.getElementById(button.id).classList.add("active");
    document.getElementById("preprint").classList.add("active");
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
