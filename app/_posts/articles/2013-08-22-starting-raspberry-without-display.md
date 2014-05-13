---
layout: post
title: "Starting a Raspbery Pi without a display"
categories:
- raspberry
- howto
- planet-debian
type: post
date: 2013-08-22 02:12:22 UTC-0430
---
Recently (actually 3 weeks ago) [I bought a Raspberry Pi for myself](http://instagram.com/p/cdELMsNxk-/) and it wasn't until today that I power it on by the first time. Call it RealLife™ for simplicity.

Anyway, one of my first issues was that I do not own any display with RCA or HDMI inputs, and all I have is a router that works as my WiFi hotspot as well. Since this starter kit comes with [Raspbian](http://raspbian.org) by default I made some research and found that the default `user:password` is `pi:raspberry`, `ssh-server` is on by default and the network interface `eth0` tries to grab an IP automatically via DHCP.

So starting my Raspberry Pi was as easy as connect a wire to my device and the router, then a quick `nmap -sP 192.168.0.0/24` and there it was, under the hostname `raspberry` my brand new raspberry.

After a `ssh pi@192.168.0.X` a nice `raspi-conf` was receiving me to start setting up my device.
