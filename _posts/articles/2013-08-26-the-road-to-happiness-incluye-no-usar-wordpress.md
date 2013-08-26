---
layout: post
title: "The Road to Happiness incluye no usar WordPress"
categories:
- jekyll
- wordpress
- planeta-linux
type: post
date: 2013-08-26 03:03:23 UTC-0430
---
Ayer hubo una interesante conversa en Twitter sobre WordPress, lo mínimo para correro y opciones para *gente pobre* (como dijo Faneyth).[0](https://twitter.com/phenobarbital/status/371819458421346304) [1](https://twitter.com/LuisAlejandro/status/371821008681852930) [2](https://twitter.com/zentraedi/status/371821336706166786).

Yo soy exponente de la *opción para gente pobre* (LOL) con Jekyll y GitHub Pages. Migré en [diciembre del 2012](http://ghostbar.co/2012/12/15/switched-to-jekyll/) y no fué por pobreza exactamente sino porque WordPress (junto con la mayoría de opciones para blogging como Drupal), al menos para mi, no tiene sentido con las tecnologías disponibles actualmente.

¿Bases de datos en un blog? ¿Para qué?
--------------------------------------
Esto es algo que no tiene sentido. Si bien las bases de datos ayudan a organizar información de manera ordenada eso es algo que un blog NO necesita. El contenido es estático en su mayoría, lo único dinámico son los comentarios y con lo fácil que es usar un servicio tipo [Disqus](http://disqus.com) ya esa información no es necesaria almacenarla en un sistema propio.

Usar un CMS es renderizar, una y otra vez la misma cosa. ¿Tiene sentido?
------------------------------------------------------------------------
En mi opinión es desperdiciar poder de procesamiento. ¿Por qué? Porque es el mismo HTML, una y otra vez, y otra vez, y otra vez. La única forma de cambiar esto es colocando un caché por encima, lo cuál es aún más overhead, más cosas que mantener, menos tiempo para hacer cosas que de hecho sean útiles y no simple *mantenimiento*.

Seguridad
---------
Todos sabemos que un CMS es propenso a tener problemas de seguridad, alguien consigue un bug y lo explota. Con Jekyll y los otros generadores de contenido estático eso no pasa. El problema de seguridad pasa a ser en el hosting y es mucho más fácil controlar un punto que dos.

Rapidez
-------
Para cualquier servidor tan sólo servir un archivo estático es mucho más rápido que generar un archivo y servirlo.

Extra: GitHub da hosting gratuito
---------------------------------
[GitHub](https://github.com/) tiene un servicio llamado GitHub Pages el cuál te permite hospedar archivos estáticos y mantenerlos organizados en un repositorio `git`. Además, si usas Jekyll puedes simplemente subirlo a GitHub y GitHub Pages los generará y publicará. Además puedes usar dominios personalizados, por lo que al menos que no estés usando un `A record` en tu DNS sino un `CNAME` o la persona se sepa la IP de GitHub, nadie se dará cuenta que el servidor que lo está sirviendo es de GitHub.

También puede ser servidor por un simple NGINX o *ponga aquí el nombre de su servidor HTTP favorito*.

**El tiempo del *dynamic blog engine* pasó**.
