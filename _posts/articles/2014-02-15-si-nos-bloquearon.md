---
layout: post
title: "Sí, nos bloquearon"
categories:
- censura
- Venezuela
- Planeta Linux
type: post
date: 2014-02-15 03:43:26 UTC-0430
---

Tanto CONATEL como CANTV han negado que haya habido censura en el Internet venezolano estos últimos dos días, aquí están las pruebas que sí lo han hecho.

El primer bloqueo fue del servidor de imágenes de Twitter bajo `pbs.twimg.com` el 13 de febrero de 2014. Bajo este dominio se sirven las imágenes de Twitter, tanto imágenes de perfil como imágenes de contenido generado por el usuario.

Este bloqueo fue por CANTV, únicamente. Pueden ver los resultados de intentar descargar una imágen y luego hacer `traceroute` tanto [en Inter (que sí funcionó)](http://pastebin.com/P8h71vTV) como [con CANTV (que tenía bloqueado)](http://pastebin.com/E7eYTZNp). (Si no pueden ver los archivos, es porque pastebin.com aún está siendo bloqueado, como lo es al momento de escribir esto: 04:49:13 UTC-0430).

Los reportes no fueron aislados y se dejaron sentir por gran cantidad de usuarios. Los reportes confirmaron que sólo CANTV era el ISP con problemas. Al cambiar a Movistar, Digitel e Inter, las imágenes cargaban con normalidad.

[William Castillo](https://twitter.com/planwac), presidente de CONATEL, [dió declaraciones a Telesur TV](http://laiguana.tv/noticias/2014/02/14/12304/DESDE-TELESUR-WILLIAM-CASTILLO-LE-MANDO-UN-MENSAJE-A-LOS-MEDIOS-INTERNACIONALES.html) donde afirmó que <em>la falla</em> se dió en muchos países de latinoamérica también. No consigo fuentes para confirmar eso. Este argumento lo repite CANTV en un comunicado, donde dicen que la falla se dió también en varios países de latinoamérica. Incluso, fuentes mexicanas cubren la censura de las imágenes en Twitter de Venezuela y nunca se menciona que haya habido fallas en México. El comunicado, emitido por CANTV, [repite ese argumento](http://www.cantv.com.ve/seccion.asp?pid=1&sid=144&NotID=6460), sin fuentes.

Así mismo, [Nu Wexler](https://twitter.com/wexler), [portavoz de Twitter](http://www.linkedin.com/in/nwexler), [confirmó a Bloomberg que sus imágenes estaban siendo bloqueadas en Venezuela](http://www.bloomberg.com/news/2014-02-14/twitter-says-venezuela-blocks-its-images-amid-protest-crackdown.html).

Más pruebas de las trazas que muestran a CANTV deteniendo la ruta para llegar a `pbs.twimg.com` están [aquí](https://twitter.com/lorissantamaria/status/434153609781981184/photo/1) [aquí](https://twitter.com/lorissantamaria/status/434154104621760514).

Pero los bloqueos no terminan allí, [el presidente de CONATEL en su cuenta de Twitter confirma que se han bloqueado varios sitios desde donde se atacan a sitios gubernamentales](https://twitter.com/planwac/status/434388069349748737) y horas después se empiezan a sentir quejas por el bloqueo a [pastebin.com](http://pastebin.com). Pastebin es un sitio donde se comparte texto plano. Desde este sitio no se puede ejecutar ningún ataque. Sin embargo, se confirma que está bloqueado y no sólo por CANTV, sino por Inter también.

Al hacer trazas y hacer pruebas de resolución de dominio se consigue que: [CANTV bloqueó](https://twitter.com/yondri/status/434456214978564096/photo/1) [la resolución del dominio pastebin.com desde sus DNS](https://gist.github.com/ghostbar/9010495) ([no así resolver `pbs.twimg.com` o `google.com`](https://i.cloudup.com/oyiwqpFsIw-2000x2000.png)) y que [intentar llegar a la IP mediante una traza es imposible](https://gist.github.com/ghostbar/9012910). Estos servidores DNS son controlados directamente por CANTV. Otros servidores DNS resuelven correctamente el dominio `pastebin.com`.

Ahora, [Inter no sacó `pastebin.com` de sus DNS](http://pastebin.com/4QaK7jag) sino que [únicamente bloqueó](https://twitter.com/anibalrojas/status/434477751790489600) [la IP](https://twitter.com/ghostbar/status/434452582849732608).

A todas estas, William Castillo afirma en su perfil de Twitter: [«Expertos informáticos d oposiciòn han reconocido hoy en radio q es improbable un bloqueo de Twitter desde Venezuela #GuerraDeDesinformación»](https://twitter.com/planwac/status/434468976563740672). No sé quiénes serán, pero eso es una mera opinión y la realidad es que en Venezuela, los ISP han estado bloqueando páginas web enteras. Ante los hechos (y no las opiniones) vale la pena hacer saber [la declaración conjunta que hiciesen los relatores sobre libertad de expresión y opinión de las Naciones Unidas el 1 de junio de 2011](http://www.oas.org/es/cidh/expresion/showarticle.asp?artID=848&lID=2) (no está demás).

Para detener ataques informáticos no es necesario bloquear sitios web, mucho menos sitios como pastebin.com que sólo almacenan información. Se detiene con infraestructura sólida, con balance de cargas y contenido distribuido por regiones (CDN). Igualmente usando software con las actualizaciones de seguridad. Pastebin.com es un sitio que sólo almacena información y bloquear información constituye censura.

La censura es inconstitucional, establecido así en el artículo 57. El bloqueo es un acto de censura. No sólo eso, no hay transparencia sobre qué están bloqueando ni por qué. El mismo artículo 57 de la constitución prohíbe la censura a los funcionarios para dar cuenta de los asuntos bajo sus responsabilidades y la recién aprobada ley de infogobierno en su artículo 13 habla del principio de transparencia y la publicidad máxima que debe dársele a sus actuaciones. Espero que los funcionarios públicos den ejemplo de ciudadanía y hagan cumplir las leyes a cabalidad. Ya hay leyes de delitos informáticos, no es necesario romper una ley (ni la constitución) para hacer cumplir otra.
