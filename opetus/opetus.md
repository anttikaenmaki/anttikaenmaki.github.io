---
layout: page
language: finnish
title: Opetus
permalink: /opetus/
---

Matematiikan opiskelu yliopistossa on perinteisesti koostunut [luennoista](https://en.wikipedia.org/wiki/Lecture) ja [harjoituksista](https://en.wikipedia.org/wiki/Exercise_(mathematics)). Luennoilla esitellyt teoriat ja käsitteet luovat perustan, jonka pohjalle syvempi ymmärrys rakennetaan. Opiskelu ei kuitenkaan ole pelkästään yksisuuntaista tiedon vastaanottamista, vaan se edellyttää aktiivista pohdintaa, ongelmanratkaisua ja itsenäistä työskentelyä. Nykyisin tiedon jakaminen ei ole enää vain luentotilanteen varassa, vaan opiskelu voidaan toteuttaa monin eri tavoin, kuten verkkomateriaalien, videoiden ja interaktiivisten tehtävien avulla. Tämä mahdollistaa oppimisprosessin räätälöinnin yksilöllisten tarpeiden mukaan ja tukee itsenäistä opiskelua. Tältä sivulta löytyy kirjoittamani julkinen oppimateriaali, joka on suunniteltu nimenomaan tukemaan tätä tavoitetta. Materiaali voi toimia paitsi luennolla käsiteltyjen aiheiden tarkempana syventämisenä, myös itsenäisen opiskelun välineenä.

{% for paper in site.data.luentomonisteet %}
{% assign paperdata = paper[1] %}
{{ paper[0] }}. {% include teaching-item.html language=page.language
    name=paperdata.name 
    filename=paperdata.filename 
    description=paperdata.description
    date=paperdata.date %}
{% endfor %}{:reversed="reversed"}
