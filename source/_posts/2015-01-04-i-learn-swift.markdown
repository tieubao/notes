---
layout: post
title: "I learn Swift"
date: 2015-01-04 00:28:17 +0700
comments: true
categories: 
- iOS
- cocoa

keywords: iOS, cocoa
description: Some thoughts when I start learning iOS 8 with Swift
cover: /images/blog/2015-01-04-ios-swift-course.png
---

Last month, [CloudJay](https://www.facebook.com/cloudjay) received an offer from HCMC Vietnam National University (VNU) to make a application that help highschool student find out what they are interested in and what major that they should study in university. We planned to build a standalone app in Android and iOS platform and they will be integrated Admod to make some money. It's such an easy app and I take it as a chance to try iOS development.

To begin, I take the video course named `The Complete IOS 8 Course with Swift` from `bitfoundtain.io` which brings overview and some sample about iOS development with Swift.

{% img /images/blog/2015-01-04-ios-swift-course.png %}

I read and practice articles from [`CodePath` repository](https://github.com/codepath/ios_guides/wiki). They gather all useful links and resources, from beginning to end.

{% img /images/blog/2015-01-04-ios-codepath.png %}

As a android developer, I find something similars and something difference that make the learn progress slow down.

iOS also have dependency manager likes gradle in Android, it's a ruby gem called [CocoaPods](http://cocoapods.org/). Currently it have Swift support in beta release.

{% img /images/blog/2015-01-04-cocoapods.png %}

Swift is new programming language introduced by Apple last year. iOS developer used Objective-C before and they're still not want to convert them to Swift. So it is harder to find tutorial in Swift than Objective-C though you can find sth in [Apple Documents](https://developer.apple.com/library/prerelease/ios/navigation/#section=Resource%20Types&topic=Guides)

UI Layout in iOS is different from Android. In android, screen resolution is devided into [ldpi to xxhdpi](http://petrnohejl.github.io/Android-Cheatsheet-For-Graphic-Designers/) and images size should match those resolutions. In iOS, you will have 1x, 2x and 3x resolution which can be referenced from [cheatsheet](http://iosdesign.ivomynttinen.com/)

{% img /images/blog/2015-01-04-ios-resolution.png %}

In Android, to make a responsive layout, we often define UI in xml files, use `layout_weight` to make the scalable container. Views are wrapped by ViewGroup or some kinds of Layout. We rarely have to create UI programmatically. But in iOS, people usually render UI in code despite of Xcode6 support matured Storyboard. They find it the easier way. You have to define UIViews and add the `constraints` between them to make them [Auto Layout](http://makeapppie.com/2014/07/26/the-swift-swift-tutorial-how-to-use-uiviews-with-auto-layout-programmatically/). Some still find Storyboard is better because they can easy manage the screen flows visually.