---
layout: page
title: Blog
permalink: /blog
---

This is my blog!

{% assign folder=page.permalink | split: "/" | last %}
{{ folder }}

{% include archive.html language=page.language category=folder %}
