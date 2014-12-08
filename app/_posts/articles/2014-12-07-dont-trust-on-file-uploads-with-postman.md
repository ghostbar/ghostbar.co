---
layout: post
title: "Don't trust on file uploads with postman"
categories:
- postman
- curl
- debugging
type: post
date: 2014-12-08 18:01:57 UTC-0500
---
I have been using postman for quite a while to test requests into my day-job API, so I was confident it worked pretty nice and it was definitely very easy to use. I just saved the requests and it even handled cookies for me.

Then I had to test files. Since it worked pretty nice on the other requests I were doing, including `form-data`, `urlencoded` or `multipart` then when files upload failed the first thing that came to my mind was «*shit, I couldn't get streams to work*» and «*hapi is broken*» (I'm using [`hapi`](http://hapijs.com/)), even worst: [`pkgcloud`](https://github.com/pkgcloud/pkgcloud) doesn't takes streams. As a result, I ended up debugging for hours streams on `pkgcloud` and changed implementations, then checked upstreams on `hapi` and saw there was on `.on('data', fn)` being called but `.on('readable')` and `.on('end')`.

«*Empty streams!*» I said, «*of course, `hapi` is wrong and it's not reading the file I'm sending!*». Oh boy, I was so wrong. I even filled a bug asking if the streams implementation was broken.

Then I decided to give it a try with `curl` and **boom**: worked.

«*OK, `curl` must be corrupted, will try with `wget`*», of course, *`curl` must be corrupted*; seems legit, right? So `wget` was *corrupted* as well it seemed, because that was working too.

Lesson: do not trust on postman. When I started writing it I was thinking *don't trust postman for file uploads* but now, after revisiting all it took to debug such a simple thing it's better a *don't trust postman at all*.
