---
layout: post
title: "Geeky solutions: Registration"
date: 2014-12-15 16:06:48 +0700
comments: true
categories: 
- geeky.vn
- geek
keywords: geeky.vn, geeky
description: I will try to solve some quizs at http://www.geeky.vn/
cover: /images/blog/2014-12-15-geeky.png
---

{% img /images/blog/2014-12-15-geeky.png %}

Homepage: http://www.geeky.vn/ [^1]

Read more about Geeky on [TechInAsia](https://www.techinasia.com/geeky-puzzles-filter-recruit-smart-engineers-vietnam/).

Nowadays, many startups use geeky.vn as a standard to recruit new members. You have to be a geek with a capability to think out of the box, some knowledge on computer and linux to start the game.

{% img /images/blog/2014-12-15-welcome.png %}

## Problem Set 1: Register

{% img /images/blog/2014-12-15-ps1-register.png %}

Step 1: Calculate `{ [ (prls6 base 36 - prime base 36) << 7 ] - 1 }` to base 10

```
{ [ (prls6 base 36 - prime base 36) << 7 ] - 1 } 
= (43278342 - 43274246 << 7) - 1
= (2^12 << 7) - 1 [^2]
= 2^19- 1 
= 524288 - 1 = 524287
```

Step 2: 

Easiest way: Google to get first `524287` digits after decimal of Pi. Copy them to some text editor and pick for 524287 digits.

Hard way: Write a script to get those digits.

Step 3: Write a script to hash the result with MD5. There are a lot of digits from step 2 and you cannot use online tool. They want to make sure that you know at least one programming language or you have a special way to find a result.

```
MD5: 2663512a5e7b6d3ae8ca521bfXXXXXXX
```

A big congratulation if you can get there.

{% img /images/blog/2014-12-15-ps1-congrats.png %}

[^1]: Founder of Geeky.vn is [Mr. Nguyen Tuan Anh](https://www.linkedin.com/in/tuananh). He is one of the previous that I admire.

[^2]: [Shift left](http://www.miniwebtool.com/bitwise-calculator/bit-shift/?data_type=10&number=4096&place=7&operator=Shift+Left)