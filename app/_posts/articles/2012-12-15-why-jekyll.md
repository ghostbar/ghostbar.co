---
published: true
layout: post
title: Why Jekyll
abstract: While updating my blog I was looking not only for being easier to design but using less resources all-together.
author_twitter: ghostbar
author: Jose Luis Rivas
categories:
- planet-debian

---

## Why?
[I switched to Jekyll](http://ghostbar.ath.cx/2012/12/15/switched-to-jekyll/) but it wasn't a fast decision. I really tried to give WordPress a chance, again, but I'm not getting along pretty well with PHP since like 2 years ago. In fact, is a headache to maintain on my server. In the course of the years I have had several downtimes on my PHP-based sites because of changes like PHP-FPM. Some sites just dropped working for me while others kept doing OK. This is in the same server, with the same database and the same codebase (WordPress).

After a lot of time programming on Node.js and been learning more Ruby (*CoffeeScript made me love the syntax*) I just got tired of using more resources of what I really needed, and with a regular CMS that means a database. Why would I need a database if I just update like once a day? For a comment-system? There's Disqus already, and people can just comment you on Twitter or make a [Branch](http://branch.com) for it, or just write you an email! Plain simple.

## Jekyll
So there was Jekyll, a pretty nice tool creating static-sites very fast and easy to learn. It didn't needed a database and because all is static is pretty fast. Even the hosting requirements got lowered to the point I could ([and I did](https://github.com/eserre/ghostbar.ath.cx)) just upload this to GitHub and served it from there as a GitHub Page!

## One more thing
One thing made me decided to upload to GitHub as well was [Prose.io](http://prose.io), a simple text-editor for GitHub with support for MarkDown made by the guys @ [developmentseed.com](http://developmentseed.com). So while it was made for being updated on my terminal I could just do it as well from the web, from anywhere with just my GitHub account and having previews on-the-fly.

## The downside
Since I don't control this server I couldn't setup redirections for my old feeds. Of course, I could have just copied the same pattern in a folder and put there an XML feeding the category X, but I think is easier to update the planets being feeded to the new URIs.

## On the bright-side
I even could put pretty-permalinks to work! So the structure for my old links kept the same.