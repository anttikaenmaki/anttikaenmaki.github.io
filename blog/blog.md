---
layout: page
title: Blog
permalink: /blog
---

My blog features surveys and informal posts offering background information and insights into my recent publications. I assume the reader has at least an undergraduate-level understanding of mathematics. In addition, I may also take the opportunity to explore a range of other interesting topics and discuss various math-related subjects as they arise. {% include search-bar.html text="" %}

{% assign folder=page.permalink | split: "/" | last %}
{% include archive.html language=page.language category=folder %}
