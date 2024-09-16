---
layout: page
language: finnish
title: Mittateoria
permalink: /teaching/mittateoria
---

Tämä on mittateorian kurssin kurssisivu.

{% assign folder=page.permalink | split: "/" | last %}
{{ folder }}

{% include archive.html language=page.language category=folder %}

