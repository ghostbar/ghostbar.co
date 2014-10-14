---
layout: post
title: "Irssi and Tmux having refresh issues, quick work-around"
categories:
- irssi
type: post
date: 2014-10-13 22:08:54 UTC-0500
---

    TERM=screen irssi

I had this same issue with `htop` and `tmux` and this was the solution. It seems it's an issue with the 256-color support or something.

So there you go, if you're using the latests `irssi` and see only half of the screen refreshes (or just the last line) then this workaround will solve it for you.

I put it on my aliases list like:

    alias irssi='TERM=screen irssi'

And done.
