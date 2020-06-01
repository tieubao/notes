---
layout: post
title: "Git practices at Dwarves Foundation"
date: 2016-06-20 04:32:09 +0700
comments: true
categories:
- practice
- git
- gitflow
- pull request

keywords: git, gitflow, pull request, practice
description: Git practice using at Dwarves Foundation. Git is one of the most popular source control. Github is one platform built over the top of Git and well adapted by lots of companies. Knowing the right workflow will help to increase team productivity.

---

Git is one of the most popular source control. Github is one platform built over the top of Git and well adapted by lots of companies. Knowing the right workflow will help to increase team productivity. In this post, I will try to cover some of the best practices from the community and the way we applied them at [Dwarves Foundation](https://www.dwarves.foundation).

# Know how to write good commit message

> Source: http://chris.beams.io/posts/git-commit/

{% img /images/blog/2016-06-27-git-commit.png %}

Have you ever read some repos with commit messages like above?

While many repositories' logs look like the former, there are exceptions. The [Linux kernel](https://github.com/torvalds/linux/commits/master) and [git itself](https://github.com/git/git/commits/master) are great examples. Look at [Spring Boot](https://github.com/spring-projects/spring-boot/commits/master), or any repository managed by [Tim Pope](https://github.com/tpope/vim-pathogen/commits/master). The contributors to these repositories know that a well-crafted git commit message is the best way to communicate context about a change to fellow developers (and indeed to their future selves). A diff will tell you what changed, but only the commit message can properly tell you why.

Being known that, a project's long-term success rests (among other things) on its maintainability, reviewing others commits and pull requests is also the big reason that you should write great commit messages.

In the post, the author wants to address the most basic elements of keeping a healthy commit history: how to write an individual commit message. You can checkout the source article or just follow the **seven rules** below and you're on your way to committing like a pro

1. Separate subject from body with a blank line
2. Limit the subject line to 50 characters
3. Capitalize the subject line
4. Do not end the subject line with a period
5. Use the imperative mood in the subject line
6. Wrap the body at 72 characters
7. Use the body to explain what and why vs. how

# Git branching model

# Gitflow

Inspired by Vincent Driessen's branching model, git-flow are a set of git extensions to provide high-level repository operations for it. Git-flow is a merge based solution. It doesn't rebase feature branches.

- Checkout gitflow cheatsheet: http://danielkummer.github.io/git-flow-cheatsheet/
- Apps that support gitflow:
	+ Source Tree: https://www.sourcetreeapp.com
	+ Git Tower: https://www.git-tower.com

Note: Maybe after working for a long time with merge based Gitflow, you will find your git log a little bit confusing and look like that:

{% img /images/blog/2016-06-27-gitflow-mess.png %}

Please take no worries about this, because there is still a part about `git rebase`. For now, you can continue to read the article [GitFlow considered harmful](http://endoflineblog.com/gitflow-considered-harmful) to know more about the author issue.

### Gitflow pitfall

- It makes the project's history completely unreadable with the [`--no-ff` flag](https://stackoverflow.com/questions/9069061/what-is-the-difference-between-git-merge-and-git-merge-no-ff). The --no-ff flag prevents git merge from executing a "fast-forward" if it detects that your current HEAD is an ancestor of the commit you're trying to merge. A fast-forward is when, instead of constructing a merge commit, git just moves your branch pointer to point at the incoming commit. 
- The master/develop split is redundant. 
- It's needlessly complex. And people make mistakes and break them by accident.

### The Anti-gitflow

- There is only one eternal branch - you can call it master, develop, current, next - whatever. I personally like "master", and that's the name I'll use in the rest of the description, as it's convention by now in the Git world and immediately conveys its purpose.
- All other branches (feature, release, hotfix, and whatever else you need) are temporary and only used as a convenience to share code with other developers and as a backup measure. They are always removed once the changes present on them land on master.
- Features are integrated onto the master branch primarily in a way which keeps the history linear. You have a lot of leeway in how you want to enforce this. You can make it simply a convention that developers are encouraged, but not forced, to follow. On the other side of the spectrum, if you use something like Gerrit to manage your Git repositories (which I recommend, even if you don't practice code reviews - the permission system is fantastic, and if you ever decide you want code reviews, it'll be very easy to start doing them), you can set up permissions in such a way that actually forbids pushing merge commits to master, and that way ensure linear history.
- Releases are done similarly to in GitFlow. You create a new branch for the release, branching off at the point in master that you decide has all the necessary features. From then on new work, aimed for the next release, is pushed to master as always, and any necessary changes are pushed to the release branch (in my opinion, it's an anti-pattern and a huge red flag if your release requires separate commits to work, but that's a topic for another article - for simplicity, let's assume you can't or don't want to change that). Finally, once the release is ready, you tag the top of the release branch. Then, because there is one eternal branch, there is only one way to get your release to be versioned permanently - and that is to merge the release branch into master and push that changed master. After that, all the changes that were made during the release are now part of master, and the release branch is deleted.
- Hotfixes are very similar to releases, except you don't branch from an arbitrary commit on master, but from the release tag that you want to make the fix in. Again, work on master continues as always, and the necessary fixes are pushed to the hotfix branch. Once the fix is ready, the procedure is exactly the same as for a release - tag the top of the branch creating a new release, merge it into master, then delete the hotfix branch.

# Pull Request

Pull request is a feature that makes it easier for developers to collaborate. Pull request is a mechanism for a developer to notify team members that they have completed a feature. Some tricks to make Pull Requests more awesome for your project:

- Open a Pull Request as early as possible: Pull Requests are a great way to start a conversation of a feature, so start one as soon as possible- even before you are finished with the code. Your team can comment on the feature as it evolves, instead of providing all their feedback at the very end.
- Pull Requests work branch to branch: No one has a fork of github/github. We make Pull Requests in the same repository by opening Pull Requests for branches.
- A Pull Request doesn't have to be merged: Pull Requests are easy to make and a great way to get feedback and track progress on a branch. But some ideas don't make it. It's okay to close a Pull Request without merging; we do it all the time.

Hint: Based on an article [Type of Pull Request](http://ben.balter.com/2015/12/08/types-of-pull-requests/), there are 6 types of PR. But [`WIP pattern`](http://ben.straub.cc/2015/04/02/wip-pull-request/) is the one that is using by lots of teams and companies. It follows the mantra of "**Open a Pull Request as early as possible**".

# Doing Code Review

> Source: https://github.com/thoughtbot/guides/tree/master/code-review

### Everyone

- Accept that many programming decisions are opinions. Discuss tradeoffs, which you prefer, and reach a resolution quickly.
- Ask questions; don't make demands. ("What do you think about naming this :user_id?")
- Ask for clarification. ("I didn't understand. Can you clarify?")
- Avoid selective ownership of code. ("mine", "not mine", "yours")
- Avoid using terms that could be seen as referring to personal traits. ("dumb", "stupid"). Assume everyone is attractive, - intelligent, and well-meaning.
- Be explicit. Remember people don't always understand your intentions online.
- Be humble. ("I'm not sure - let's look it up.")
- Don't use hyperbole. ("always", "never", "endlessly", "nothing")
- Don't use sarcasm.
- Keep it real. If emoji, animated gifs, or humor aren't you, don't force them. If they are, use them with aplomb.
- Talk synchronously (e.g. chat, screensharing, in person) if there are too many "I didn't understand" or "Alternative solution:" comments. Post a follow-up comment summarizing the discussion.

### Having Your Code Reviewed

- Be grateful for the reviewer's suggestions. ("Good call. I'll make that change.")
- Don't take it personally. The review is of the code, not you.
- Explain why the code exists. ("It's like that because of these reasons. Would it be more clear if I rename this class/file/- method/variable?")
- Extract some changes and refactorings into future tickets/stories.
- Link to the code review from the ticket/story. ("Ready for review: https://github.com/organization/project/pull/1")
- Push commits based on earlier rounds of feedback as isolated commits to the branch. Do not squash until the branch is ready - to merge. Reviewers should be able to read individual updates based on their earlier feedback.
- Seek to understand the reviewer's perspective.
- Try to respond to every comment.
- Wait to merge the branch until Continuous Integration tells you the test suite is green in the - branch.
- Merge once you feel confident in the code and its impact on the project.

### Reviewing code

Understand why the change is necessary (fixes a bug, improves the user experience, refactors the existing code). Then:

- Communicate which ideas you feel strongly about and those you don't.
- Identify ways to simplify the code while still solving the problem.
- If discussions turn too philosophical or academic, move the discussion offline to a regular Friday afternoon technique - discussion. In the meantime, let the author make the final decision on alternative implementations.
- Offer alternative implementations, but assume the author already considered them. ("What do you think about using a custom - validator here?")
- Seek to understand the author's perspective.
- Sign off on the pull request with a 👍 or "Ready to merge" comment.

# Git templates

To make things easier, we have adopted Issue template and Pull Request template that we think they are great to help the team to improve the productivity

> https://gist.githubusercontent.com/tieubao/2a9fc10be45a67ab315ef3f8ead6530d/raw/e99d04268bf83389f4f728f386f79d9da3132480/issue-template.md

{% gist 2a9fc10be45a67ab315ef3f8ead6530d %}

> https://gist.githubusercontent.com/tieubao/98a83f179d06fe3e33e4dfe4f1395904/raw/4cd5eaa3586503c9a89b7cac34886e2769db01d1/pr-template.md

{% gist 98a83f179d06fe3e33e4dfe4f1395904 %}

<br>

-------------------

<sup>And finally, Atlassian has a full tutorials from scratch, you can find it at: https://www.atlassian.com/git/tutorials/what-is-version-control<sup>
