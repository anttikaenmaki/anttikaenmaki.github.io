---
layout: page
title: Statistics
permalink: /stats/
---

I have published in {% include atleast.html n=1 filter="journal" items="publication" output="number" %} journals and at least 3 times in {% capture pop-journals %}{% include atleast.html n=3 filter="journal" items="publication" output="names" %}{% endcapture %}{% include checkbox.html type="journal" filters=pop-journals checkbox="no" %}.

I have published {% include count-papers.html items="procamermathsoc,advmath" %} papers in PAMS and Advances. My JUFO-3 count is {% include count-jufo.html  %}

I have authored {% include checkbox-status.html items="preprint" end=", " checked="checked" %}{% include checkbox-status.html items="publication" checked="checked" %}{% include checkbox-status.html items="survey" begin=", and " end=" along with related works," checked="checked" %}{% include checkbox-status.html type="topic" items="et" middle="ergodic theory" end=", " %}{% include checkbox-status.html type="topic" items="fg" middle="fractal geometry" end=", and " %}{% include checkbox-status.html type="topic" items="gmt" middle="geometric measure theory" end="," %} as detailed below.

I have authored {% include checkbox-status.html items="preprint" end=", " checked="checked" %}{% include checkbox-status.html items="publication" checked="checked" %} across {% include atleast.html n=1 filter="journal" items="publication" output="number" %} journals{% include checkbox-status.html items="survey" begin=", and " end=" along with related works," checked="checked" %} as detailed below. My research focuses on {% include checkbox-status.html count="no" type="topic" items="et" middle="ergodic theory" %}, {% include checkbox-status.html count="no" type="topic" items="fg" middle="fractal geometry" %}, and {% include checkbox-status.html count="no" type="topic" items="gmt" middle="geometric measure theory" %}. I have collaborated with {% include atleast.html n=1 output="number" %} researchers, notably with {% capture favourite-people %}{% include atleast.html n=5 output="names" %}{% endcapture %}{% include checkbox.html type="coauthor" filters=favourite-people checkbox="no" %}, each on at least five projects. Additionally, I have co-authored at least four papers with {% include atleast.html n=4 output="number" %} researchers, three papers with {% include atleast.html n=3 output="number" %}, and two papers with {% include atleast.html n=2 output="number" %}. For comprehensive bibliometric details, consult my [MathSciNet](https://mathscinet.ams.org/mathscinet/MRAuthorID/713182), [zbMATH Open](https://zbmath.org/authors/kaenmaki.antti), and [Google Scholar](https://scholar.google.com/citations?user=ubIXkowAAAAJ) profiles. {% include search-bar.html text="" %}

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
