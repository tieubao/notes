---
layout: post
title: "Android with Eclipse and Genymotion on Mac OS X"
date: 2013-12-03 23:22:08 +0700
comments: true
categories: 
- android
- eclipse
- genymotion

keywords: android, eclipse, genymotion 
description: Basic flow and environment setting for Android developer with Eclipse and Genymotion.

---

#Setup Eclipse

Download `Android SDK` from [Official Site](http://developer.android.com/sdk/index.html) which including Eclipse and ADT plugin. You don't need to setup manually.

{% img /images/blog/2013-12-03-sdk.png %}

Extract then Open `Eclipse.app`

{% img /images/blog/2013-12-03-open-eclipse.png %}

Configure `IntelliSense` by following [these steps](http://tieubao.22journeys.com/writing/2013/11/30/intellisense-in-eclipse/).

#Genymotion: the faster Android Emulator

{% img /images/blog/2013-12-04-genymotion.png %}

I use Genymotion instead of default emulator in Android SDK. For me, using Genymotion bring the feeling of better performance than the default. There're many arguments but it doesn't really matter.

First, you need an account to download it and its plugin. Visit [download page.](https://cloud.genymotion.com/page/launchpad/download/)

{% img /images/blog/2013-12-04-download-genymotion.png %}

{% img /images/blog/2013-12-04-eclipse-plugin.png %}

Follow the instruction in [`document`](https://cloud.genymotion.com/page/doc/) to setup Genymotion Client and Eclipse plugin [^1]. 

{% img /images/blog/2013-12-04-doc.png %}

Then you need to get some devices with various resolution from Genymotion server. 

{% img /images/blog/2013-12-04-multi-resolution.png %}

Finally, you will get it works if nothing goes wrong. {%gemoji smile%}

{% img /images/blog/2013-12-04-virtual-device.png %}

[^1]: At this time we don't use Android Studio which is an customized version of IntelliJ because of its pre-mature support from community.
