---
layout: post
title: "Auto Layout in iOS"
date: 2015-01-05 01:07:49 +0700
comments: true
categories: 
- iOS
- layout

keywords: iOS, layout
description: Auto Layout in iOS
---

I spend a day to learn how to make auto layout in iOS. I begin with an article [How to use UIViews with auto layout programmatically](http://makeapppie.com/2014/07/26/the-swift-swift-tutorial-how-to-use-uiviews-with-auto-layout-programmatically/). It teaches me add views from the first then add size constraints and position contraints later. They are using `NSLayoutConstraint`.

After that, I find a thread at [StackOverflow](http://stackoverflow.com/questions/26180822/swift-adding-constraints-programmatically). They show off 3 ways to make Auto Layout programmatically

- Pure Classic style, which use NSLayoutConstraint with direct params
- Pure Visual Format Language style, which use `NSLayoutConstraint.constraintsWithVisualFormat()` and Visually Format Languague. You can find more information about it at [Apple Library](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage/VisualFormatLanguage.html#//apple_ref/doc/uid/TP40010853-CH3-SW1)
- Mixed style (Classic + Visual Format Language)


{% img /images/blog/2015-01-05-career365-ios-splash.png %}

I also try to apply to Career 365 splashscreen but It doesn't seem to be working. Struggling about an hour, finally I decide to find some more help from community and I find out [Cartography](https://github.com/robb/Cartography). It's such a good library which has about 1k5 stars from Github Users. Their syntax are good too. I think I should give it a try tmr.

```
layout(view1, view2) { view1, view2 in
    view1.width   == (view1.superview!.width - 50) * 0.5
    view2.width   == view1.width - 50
    view1.height  == 40
    view2.height  == view1.height
    view1.centerX == view1.superview!.centerX
    view2.centerX == view1.centerX

    view1.top >= view1.superview!.top + 20
    view2.top == view1.bottom + 20
}
```