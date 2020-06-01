---
layout: post
title: "Rebase vs. Merge"
date: 2014-05-10 15:55:37 +0700
comments: true
categories: 
- git
- rebase
- merge
- tips
keywords: git, rebase, merge, tips
description: Understanding the difference between merge and rebase

---

{% img /images/blog/2014-05-10-merge-rebase.png %}

# What does Merge or Rebase mean?

- Merging brings two lines of development together while preserving the ancestry of each commit history.
- In contrast, rebasing unifies the lines of development by re-writing changes from the source branch so that they appear as children of the destination branch – effectively pretending that those commits were written on top of the destination branch all along.

#### Merging Pros

- Simple to use and understand.
- Maintains the original context of the source branch.
- The commits on the source branch remain separate from other branch commits, provided you don’t perform a fast-forward merge. This separation can be useful in the case of feature branches, where you might want to take a feature and merge it into another branch later.
- Existing commits on the source branch are unchanged and remain valid; it doesn’t matter if they’ve been shared with others.

#### Merging Cons

- If the need to merge arises simply because multiple people are working on the same branch in parallel, the merges don’t serve any useful historic purpose and create clutter.

#### Rebase Pros

- Simplifies your history.
- Is the most intuitive and clutter-free way to combine commits from multiple developers in a shared branch

#### Rebase Cons

- Slightly more complex, especially under conflict conditions. Each commit is rebased in order, and a conflict will interrupt the process of rebasing multiple commits. With a conflict, you have to resolve the conflict in order to continue the rebase. SourceTree guides you through this process, but it can still become a bit more complicated.
- Rewriting of history has ramifications if you’ve previously pushed those commits elsewhere. In Mercurial, you simply cannot push commits that you later intend to rebase, because anyone pulling from the remote will get them. In Git, you may push commits you may want to rebase later (as a backup) but only if it’s to a remote branch that only you use. If anyone else checks out that branch and you later rebase it, it’s going to get very confusing.

# Conclusion

The consensus that I come across most frequently is that both merge and rebase are worth using. The time to use either is entirely dependent on the situation, the experience of your team, and the specific DVCS you’re using.

1. When multiple developers work on a shared branch, pull & rebase your outgoing commits to keep history cleaner (Git and Mercurial)
2. To re-integrate a completed feature branch, use merge (and opt-out of fast-forward commits in Git)
3. To bring a feature branch up to date with its base branch:
	- Prefer rebasing your feature branch onto the latest base branch if:
		- You haven’t pushed this branch anywhere yet, or
		- You’re using Git, and you know for sure that other people will not have checked out your feature branch
	- Otherwise, merge the latest base changes into your feature branch

#### Source: https://blog.sourcetreeapp.com/2012/08/21/merge-or-rebase/