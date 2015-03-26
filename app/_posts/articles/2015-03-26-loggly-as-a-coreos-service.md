---
layout: post
title: "Loggly as a CoreOS service"
categories:
- coreos
- service
- loggly
type: post
date: 2015-03-26T16:02:05
---

I spent a lot of today figuring out the best way to send the stream of logs from CoreOS to loggly, because it requires structured data and then sending it from a service on systemd.

So this was my solution for whoever it can work for.

<script src="https://gist.github.com/ghostbar/f7f2e82884631b083017.js"></script>
