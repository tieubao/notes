---
layout: post
title: "A mapbox plugin for octopress"
date: 2013-12-03 01:22:01 +0700
comments: true
categories: 
- octopress
- rails
- plugin

keywords: octopress, mapbox, plugin
description: A mapbox plugin for octopress. The easiest way to integrate Mapbox to your blog.
cover: /images/blog/2013-12-03-mapbox.png

---

[**octopress-mapbox**](https://github.com/tieubao/octopress-mapbox)

I'm building an octopress blog for my friend and need a map for markup purposes. I found `octolayer` working but `Open Street Maps` interface is too urly. After an hour searching, I meet [Mapbox](https://www.mapbox.com/) which is a map-as-a-service, beautiful design for publishing. 

{% img /images/blog/2013-12-03-mapbox.png %}

With some free time, I make a [**octopress-mapbox**](https://github.com/tieubao/octopress-mapbox) and place it on Github. You can install it like other octopress plugins and easy to integrate with Mapbox by following these steps.

* Create a Mapbox account, configure your map and get map-id.

{% img /images/blog/2013-12-03-mapid.png %}

* Clone [octopress-mapbox](https://github.com/tieubao/octopress-mapbox) repository.
* Copy all files from `plugins`, `sass` and `source` to your octopress directory.

{% img /images/blog/2013-12-03-tag.png %}

{% img /images/blog/2013-12-03-scss.png %}

{% img /images/blog/2013-12-03-head.png %}

* Include `mapbox_head` in `source/_includes/head.html`

{% img /images/blog/2013-12-03-include-head.png %}

* Import `_mapbox.scss` to your `screen.scss`

{% img /images/blog/2013-12-03-include-scss.png %}

* Add `mapbox_id` to `_config.xml`

{% img /images/blog/2013-12-03-config.png %}

* Use `mapbox` in your blog content with syntax: `{ mapbox lat long zoomLevel }`

{% mapbox 10.8148 106.6748 16 %}

OK, that's all. Please feel free to use this.