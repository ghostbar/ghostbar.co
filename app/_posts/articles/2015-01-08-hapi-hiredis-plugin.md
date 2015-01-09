---
layout: post
title: "Published hapi-hiredis on npm"
categories:
- npm
- hapi
- redis
- plugin
- nodejs
- javascript
type: post
date: 2015-01-08T21:55:36
---

I just published to [`npm`](https://www.npmjs.com/) the module [`hapi-hiredis`](https://www.npmjs.com/package/hapi-hiredis). This plugin for [`hapi`](http://hapijs.com) is fully compatible with 8.0 (and actually expects it).

The difference between this plugin and [`hapi-redis`](https://www.npmjs.com/package/hapi-redis) is that this module uses the `hiredis` parser based on `C++` bindings, `redis` uses a slower `javascript` parser. Besides that main difference this plugin supports `URL`s for giving the connection, instead `hapi-redis` only supports giving the connection parameters via separate `host`, `port` and `password` fields.

Using it is very simple, after registering the usual way as any other plugin then you can get it from the context on handlers and extensions as `this.redis` or get it from `server.plugins['hapi-hiredis].client`.
