---
layout: post
title: "Desde el CENIT anuncian plan de Retroceso Tecnológico para las universidades"
categories:
- planeta-linux
- planeta-debian
type: post
---
**Actualización [2013-05-10 22:22:16 UTC-0430]**: Para entender un poco más de cómo funciona el internet pueden ver [este vídeo precisamente sobre IXP y de donde sale el internet junto a sus interconexiones](https://www.youtube.com/watch?v=a5837LcDHfE).

Hoy ha salido a relucir, gracias a [@uraisa](https://twitter.com/uraisa), que [el CENIT reducirá el ancho de banda a las universidades venezolanas](http://periodistasandinos.blogspot.com/2013/05/el-cenit-reducira-el-ancho-de-banda-las.html), mediante orden de la OPSU.

## Un poco de background sobre la red universitaria
El CENIT ofrece -- entre varios otros servicios -- un enlace dedicado a la Red Académica venezolana llamada [Reacciun](http://www2.reacciun.ve/). Esta red es lo que se llama un [NREN](https://en.wikipedia.org/wiki/National_research_and_education_network), un ISP dedicado a apoyar las **necesidades** de las comunidades de investigación y educación en un país.

**No entiendo cómo degradar un servicio apoya las necesidades de comunidad alguna, mucho menos de investigación y educación donde más bien se necesita estar adelantados al resto de los servicios para permitir la innovación**.

## La excusa
Según un monitoreo que hicieron desde la OPSU, aún sin publicar, se subutiliza el ancho de banda y debido a eso decidieron «*sincerar*» su uso, porque muchas universidades no lo «*aprovechan adecuadamente*».

## ¿Pero qué es el ancho de banda digital?
El ancho de banda es la capacidad máxima de transferencia entre un punto y otro. Esta capacidad depende de la infraestructura instalada, por lo cuál el ancho de banda en una red hogareña **cableada** suele estar entre los 10Mbps y los 100Mbps, pero cuando hacemos uso del internet nuestro ISP limita el ancho de banda basado en cuanto hemos contratado y esos planes están limitados por su **propia capacidad instalada**. Es decir, para que CANTV mejore sus planes tiene que crear una mejor infraestructura **y** comprar más tráfico a algún Internet Transit Provider o crear un enlace a algún Internet Exchange Point (o IXP, el cuál suele salir mucho más barato que un Internet Transit Provider, pues consiste en hacer peering en una infraestructura común y evitar pasar por un Transit Provider).

Ahora, si Reacciun es una red propia, con una capacidad de ancho de banda **instalada ya**, suficiente para proveer el actual ancho de banda, y el Internet Transit Provider o IXP limita es la cantidad de datos consumidos y no el ancho de banda, que está limitada sí por la capacidad instalada en el enlace Reacciun/ISP ➜ ITP/IXP (es decir, cuánta data por segundo aguanta el cable que conecta Reacciun a su proveedor de tráfico), ¿entonces cuál es la verdadera razón para bajar el ancho de banda?

## ¿Por qué no más bien se conectan a otro IXP o cobran bajo consumo?
Es difícil ver un aumento en el costo de mantener una infraestructura ya montada, siendo el costo mayor siempre la creación y no el mantenimiento.

Si se está cobrando por un servicio donde sobra capacidad significa que se está cobrando demás, deberían más bien bajar los precios ¿no? O invertir ese extra en conectarse a otro IXP y aumentar el tráfico por peering y abaratar aún más los costos mientras se mejora el servicio.

O incluso, para sincerar, cobren simplemente por consumo y no por ancho de banda, dejen que las universidades puedan conectarse tan rápido como les permita su hardware.

## ¿Por qué no mejor implementan IPv6?
Son un NREN, deberían estar adelantados. Más cuando sus clientes son tan pocos a nivel tal que pueden reunirse con todos ellos en una sala.

## ¿Por qué propongo mejorar el ancho de banda?
Porque es falso que las universidades no la usen, más bien ha sido una limitante constante. Raisa muy bien lo dice en su artículo y cuando fui estudiante en la UNET también era un punto que surgía una y otra vez al proponer servicios con salida al internet.

Les explico: proponer un repositorio Debian al que se tenga acceso desde la internet en una universidad venezolana es casi prohibitivo, sólo la ULA tiene uno. Mientras que en otros países es precisamente la academia la que ha prestado apoyo a la comunidad open source para replicarse y tener infraestructura donde desarrollarse.

De igual forma, la limitación de ancho de banda ha hecho que en muchas universidades se apliquen reglas de calidad del servicio para evitar el abotellamiento de paquetes en la red.

¿Y nos van a decir que no se usa? ¡Si más bien la poca que hay es una enorme limitante para más y mejores desarrollos!

# Degradar un servicio es retrógrado
Es retrógrado degradar un servicio, es retrógrado ofrecer peor conexión, es retrógrado cuando hay más y más data cada vez rondando en la internet. Es retrógrado cuando entramos en la era de la BigData y no se puede hacer uso de ella porque nos están limitando más en vez de ampliar capacidad. Es retrógrado porque la capacidad instalada para soportar esto **ya está instalada**.

**Es retrógrado, es absurdo y habla mucho de las intenciones del gobierno para con las universidades: atraso.**
