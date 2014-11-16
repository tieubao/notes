---
layout: post
title: "Add library to Android Project"
date: 2013-12-07 01:25:36 +0700
comments: true
categories: 
- android
- library

keywords: android, library
description: How to add a library to Eclipse
 
---

Android community has grown fast and faster today. They contribute a lot of open source plugins and components mentioned on [previous topic](http://tieubao.22journeys.com/writing/2013/12/05/resources-every-android-developer-should-know/). You don't need to start new project from scratch. 

Some of them were released as `.jar` which was compiled. Some were released as `folder`.

{% img /images/blog/2013-12-07-hierarchical.png %}

For `*.jar` library, just simply drag and drop it into your `libs` directory and make sure they appear in `Java Build Path`

{% img /images/blog/2013-12-07-java-build-path.png %}

For those were released as folder like [FunDapter](https://github.com/amigold/FunDapter), you need to
 
* Download or clone the repository
* Copy `library` folder into your project

{% img /images/blog/2013-12-07-add-folder.png %}

* Back to `Eclipse`, import this folder as `Existing Android Code ... `

{% img /images/blog/2013-12-07-import.png %}

* Go to `Project Properties` > `Android`, then `Add` Reference to this library > `OK`

{% img /images/blog/2013-12-07-add-ref.png %}

####Notes

Some libraries like `Android Annotation`, known as `custom compiler`, cannot be used like others. You need to add them `Java Compiler` section.

* Go to `Project Properties` > `Java Compiler` > `Annotation Processing` > `Factory Path`
* Configure `Factory Path` > `OK`

{% img /images/blog/2013-12-07-factory-path.png %}

