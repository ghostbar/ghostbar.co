---
layout: post
title: "Published hapi-mongodb2 on npm"
categories:
- npm
- hapi
- mongodb
- plugin
- nodejs
- javascript
type: post
date: 2015-01-03T00:30:29
---

I just published to [`npm`](https://www.npmjs.com/) the module [`hapi-mongodb2`](https://www.npmjs.com/package/hapi-mongodb2). This plugin for [`hapi`](http://hapijs.com) is fully compatible with 8.0 (and actually expects it) and uses the MongoDB node.js driver 2.0 instead of the old 1.4.

Using it is very simple, after registering the usual way as any other plugin then you can get it from the context on handlers and extensions as `this.mongo` or get it from `server.plugins['hapi-mongodb2].client`.

For more info on what you can do with the mongodb native driver [check the docs](https://mongodb.github.io/node-mongodb-native/2.0/overview/quickstart/).
