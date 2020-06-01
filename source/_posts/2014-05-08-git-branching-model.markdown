---
layout: post
title: "Git branching model"
date: 2014-05-08 16:20:24 +0700
comments: true
categories: 
- git
- tips

keywords: git, tips
description: Git branching model and common practices
---

{% img /images/blog/2014-05-08-git-model.png %}
 
In sort, you will organise your repository into 5 types of branches:

### The main branches

- **master**: the main branch where the source code of HEAD always reflects a *production-ready* state
- **develop**: the main branch where the source code of HEAD always reflects a state with the latest delivered development changes for the next release. Some would call this the "integration branch".

### feature

- May branch off from: develop
- Must merge back into: develop
- Branch naming convention: anything except master, develop, release-\*, or hotfix-\*

Feature branches (or sometimes called topic branches) are used to develop new features for the upcoming or a distant future release. When starting development of a feature, the target release in which this feature will be incorporated may well be unknown at that point.

### release

- May branch off from: develop
- Must merge back into: develop and master
- Branch naming convention: release-*

Release branches are created from the develop branch. For example, say version 1.1.5 is the current production release and we have a big release coming up. The state of develop is ready for the “next release” and we have decided that this will become version 1.2 (rather than 1.1.6 or 2.0). So we branch off and give the release branch a name reflecting the new version number

### hotfix

- May branch off from: master
- Must merge back into: develop and master
- Branch naming convention: hotfix-*

Hotfix branches are very much like release branches in that they are also meant to prepare for a new production release, albeit unplanned. They arise from the necessity to act immediately upon an undesired state of a live production version. When a critical bug in a production version must be resolved immediately, a hotfix branch may be branched off from the corresponding tag on the master branch that marks the production version.

# Summary

While there is nothing really shocking new to this branching model, the "big picture" figure that this post began with has turned out to be tremendously useful in our projects. It forms an elegant mental model that is easy to comprehend and allows team members to develop a shared understanding of the branching and releasing processes.

#### Source: [Vincent Driessen](http://nvie.com/posts/a-successful-git-branching-model/)