---
layout: post
title: "postinstall script on heroku with different environment than production"
categories:
- development
type: post
---
While trying to push a little project to [Heroku](http://heroku.com) based on [Brunch](http://brunch.io), I ran into a difficult problem: I needed to move some files according to the environment being built, so, if it was `staging` should `mv`/`cp` a different set of files than if were `production`. I used `npm`'s `postinstall` script field and everything ran OK, until I saw that it actually was copying the `production` files.

After digging a lot, I saw the reason: Heroku uses *buildpacks* and the Node.js buildpack runs `npm install --production` which forces `NODE_ENV` to be production. Not only that, it actually runs the script in an isolated shell, so all the configs you pass to heroku via `heroku config:set` are not available. You can customize this buildpack, so I went ahead, [forked the buildpack](https://github.com/eserre/heroku-buildpack-nodejs-staging) and made a simple addition: added a `REAL_ENV=staging` variable to the `bin/compile:46` and made the scripts that are being launched from `postinstall` to check `REAL_ENV` instead of `NODE_ENV`.

Why not use `NODE_ENV` directly? Because my tests showed my that `npm install --production` forces `NODE_ENV` and got it rewritten.

After this change, using this buildpack was pretty easy, just:

    heroku config:set BUILDPACK_URL=https://github.com/eserre/heroku-buildpack-nodejs-staging

Done, push and get it rebuilt.
