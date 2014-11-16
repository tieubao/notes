---
layout: post
title: "Intellisense in Eclipse"
date: 2013-11-30 23:27:01 +0700
comments: true
categories: 
- eclipse
- android

keywords: eclipse, intellisense
description: Tips for enable auto IntelliSense in Eclipse
cover: /images/blog/2013-12-01-auto-complete-xml.png

---

IntelliSense is Microsoft implementation for auto-completion in IDE like Visual Studio. When you switch to Eclipse for Java or Android, you must use `Ctrl + Space` to trigger auto-completion and it really sucks.

Here's a tip to enable auto-completion in Eclipse. This is for Mac OS but you can do the same hacky thing in other platforms.

{% img /images/blog/2013-11-30-auto-completion-java.png %}

* Open `Preferences ...` 
* `Java > Editor > Content Assist`
* Fill in `Auto activation triggers for Java:` with value `.abcdefghijklmnopqrstuvwxyz<`
* Decrease `Auto activation delay` to `100` ms for better performance
* `XML > XML Files > Editor > Content Assist`
* Do the same thing for `XML` with value `<=:.abcdefghijklmnopqrstuvwxyz`

{% img /images/blog/2013-12-01-auto-complete-xml.png %}

* Apply then feel the beat {%gemoji smile%}



