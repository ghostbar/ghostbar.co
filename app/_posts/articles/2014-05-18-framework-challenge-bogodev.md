---
layout: post
title: "Framework Challenge Bogodev 2014"
categories:
- Español
- planeta-linux
- angularjs
- d3js
- nodejs
- expressjs
- javascript
date: 2014-05-18 07:05:03 UTC-0500
---
Ayer participé en el framework challenge de Bogodev. Fue en la sede de Wayra Colombia que es genial.

El reto era hacer una visualización de objetos espaciales alrededor de otro (la "estrella de la muerte") y actualizar sus posiciones a partir de coordenadas X, Y y Z.

La solución que le dió mi equipo consistió en Angularjs y D3js para el frontend y un expressjs muy simple para el backend.

![](https://i.cloudup.com/7PpfqYofVN.png)

Para este tipo de visualización three.js da un mejor aspecto, genera 3D de verdad y no hay que forzar un fake 3d como nos tocó hacer con D3js, y eso fue lo que hicieron otros equipos. Pero: aprendimos D3js, SVG y cómo funciona D3js cuando da el órden de renderizado lo cuál fue muy instructivo (pista: cuando le pasas un array toma la posición como identificador para hacer el renderizado, tanto posición como transisiones).

Aquí está el código y cómo correrlo por si quieren probarlo: [https://github.com/ghostbar/fchallenge-ngjs](https://github.com/ghostbar/fchallenge-ngjs).
