---
layout: post
title: "Why my gpg does not support hkps?"
categories:
- English
- gpg
- gnupg
- debian
- security
date: 2014-05-30 20:23:08 UTC-0500
---
I was changing my `~/.gnupg/gpg.conf` values today and with those was using `hkps` instead of the regular `hkp`.

And found out my debian system said `gpg` did not support that protocol `hkps`. **What?!**

Doing a little search I found out the package `gnupg` does not ship with `hkps` support because is not built with `libcurl`, if you want to have `hkps` support just install `gnupg-curl` and done, now my servers are going on `hkps`.
