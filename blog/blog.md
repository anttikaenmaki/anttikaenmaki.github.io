---
layout: page
title: Blog
permalink: /blog
---

My [blog](https://en.wikipedia.org/wiki/Blog) features surveys and informal posts offering background information and insights into my recent publications. I assume the reader has at least a [graduate-level](https://en.wikipedia.org/wiki/Postgraduate_education) understanding of [mathematics](https://en.wikipedia.org/wiki/Mathematics). In addition, I may also take the opportunity to explore a range of other interesting topics and discuss various math-related subjects as they arise.

{% assign folder=page.permalink | split: "/" | last %}
{% include archive.html language=page.language category=folder %}
