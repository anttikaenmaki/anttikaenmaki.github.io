---
layout: page
title: Publications
permalink: /publications/
---

I have authored {% include checkbox-status.html items="preprint" end=", " %}{% include checkbox-status.html items="publication" %} across {% include atleast.html n=1 filter="journal" items="publication" output="number" %} journals{% include checkbox-status.html items="survey" begin=", and " end=" along with related works," %} as detailed below. My research centers on ergodic theory, fractal geometry, and geometric measure theory. I have collaborated with {% include atleast.html n=1 output="number" %} researchers, notably with {% capture favourite-people %}{% include atleast.html n=5 output="names" %}{% endcapture %}{% include checkbox.html type="coauthor" filters=favourite-people checkbox="no" %}, each on at least five projects. Additionally, I have co-authored at least four papers with {% include atleast.html n=4 output="number" %} researchers, three papers with {% include atleast.html n=3 output="number" %}, and two papers with {% include atleast.html n=2 output="number" %}. For comprehensive bibliometric details, consult my [MathSciNet](https://mathscinet.ams.org/mathscinet/MRAuthorID/713182), [zbMATH Open](https://zbmath.org/authors/kaenmaki.antti), and [Google Scholar](https://scholar.google.com/citations?user=ubIXkowAAAAJ) profiles. {% include search-bar.html %}

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
