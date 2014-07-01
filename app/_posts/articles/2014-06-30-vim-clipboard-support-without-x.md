---
layout: post
title: 'vim: clipboard support without x'
categories:
- vim
- English
- clipboard
date: 2014-06-30 11:59:32 UTC-0500
---

On my Linux computers I have used `xclip` for having clipboard support for some years but never got it to run in my servers because they do not have X server and you need one for the clipboard, always got a:

    xclip: Error: Can't open display: (null)

So I had to do a workaround and the easiest thing to do was using a temporary file:

{% highlight vim %}
if system("echo $DISPLAY") =~ ""
  vmap <C-c> y: call system("> /tmp/theClipboardWithoutX", getreg("\""))<CR>
  map <C-v> :call setreg("\"", system("< /tmp/theClipboardWithoutX"))<CR>p
else
  vmap <C-c> y: call system("xclip -i -selection clipboard", getreg("\""))<CR>
  map <C-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
endif
{% endhighlight %}

Basically: if there's no `$DISPLAY` set then send the copied selection to the file `/tmp/theClipboardWithoutX` with the keybinds Ctrl+C and with Ctrl+V you get the data inside that file. If there's `$DISPLAY` then use `xclip`.

Surprisely it works very well.

Check [my full `vimrc` for copy and paste stuff (has configs for Mac as well)](https://github.com/ghostbar/dotvim/blob/master/vim/rc/copy-n-paste.vim) and if you want, the full [vimfiles repo](https://github.com/ghostbar/dotvim) may come handy as well.
