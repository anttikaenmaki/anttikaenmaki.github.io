---
layout: page
language: finnish
title: Mittateoria
permalink: /kurssi/mittateoria/
---

Tämä on mittateorian kurssin kurssisivu.

{% for category in site.categories %}
{% if category[0] == "mittateoria" %}
  <ul>
  {% for post in category[1] %}
    <li><a href="{{ post.url }}">{{ post.title }}, {{ post.date }}</a></li>
  {% endfor %}
  </ul>
{% endif %}
{% endfor %}

{% for category in site.categories %}
  <h3>{{ category[0] }}</h3>
  <ul>
    {% for post in category[1] %}
      <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
{% endfor %}

{%- assign posts = paginator.posts | default: site.posts -%}
{% for post in posts %}
  <article>
    {% include meta.html post=post preview=true %}
    {{ post.excerpt }}
    <div class="more"><a href="{{ post.url | relative_url }}">read more</a></div>
  </article>
{% endfor %}
