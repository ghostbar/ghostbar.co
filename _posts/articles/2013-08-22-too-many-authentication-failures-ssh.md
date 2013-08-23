---
layout: post
title: "Too many authentication failures on SSH"
categories
- ssh
- quick-fix
- planet-debian
type: post
date: 2013-08-22 21:08:25 UTC-0430
---
It seems like having several SSH keys on the same system starts giving issues with some SSH servers. The issue is that while connecting it returns:

```
Too many authentication failures for xxxxxx.
```

The fix for this is very simple and quick. Open up your `~/.ssh/config` and put:

```
IdentitiesOnly yes
```

You can add that per-host or wide (without indents, even as the first line in the config file!).
