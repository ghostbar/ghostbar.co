---
layout: post
title: "Easy proxies with nodejs"
categories:
- node
- hapi
- http-proxy
- proxy
- http
- nodejs
- javascript
type: post
date: 2015-02-27T15:01:20
---

Easy ways to get proxies with nodejs/iojs, the way to launch it should be

    URL='http://google.com' PORT=8080 node script.js

## Using http-proxy

Requires `npm install http-proxy`.

    var http = require('http');
    var httpProxy = require('http-proxy');

    var proxy = httpProxy.createProxyServer({target: process.env.URL});

    http.createServer(function (req, res) {
      proxy.web(req, res);
    }).listen(process.env.PORT || 3000);

## Using hapijs

Requires `npm install hapi`.

    var hapi = require('hapi');
    var server = new hapi.Server();
    server.connection({ port: process.env.PORT || 3000 })

    var routes = [{
      method: '*',
      path: '/{p*}',
      config: {
      },
      handler: {
        proxy: {
          host: process.env.URL,
          passThrough: true,
          redirects: 9999
        }
      }
    }];

    server.route(routes);

    server.start(function () {
      console.log('Server running at:', server.info.uri);
    });

With `hapijs` it's longer and having just one path to proxy seems like killing an ant with an elephant shotgun, yet I wanted to publish the `hapijs` way because it's easier to have several proxies in the same server in different paths. If you combine it with `catbox` you could do a very simple `proxy-cache` for several URLs, each URL in a different route without spawning several servers.
