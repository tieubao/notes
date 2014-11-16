---
layout: post
title: "Dwarves Foundation"
date: 2015-05-29 00:53:06 +0700
comments: true
categories: 
- startup
- dwarvesf

keywords: startup, dwarvesf
description: Story about Dwarves Foundation
cover: /images/blog/2014-12-11-marketing.png
---

After the interesting journey at CloudJay, I take a short break for one month and I feel that startup life is too hard for young people like me but it's really worth time. Someone said, one year to live in a startup is better than five years working in the enterprise. And I think this is correct. This time, I start my own business. I need to face more problems and be able to solve them myself to be more mature.

{% img /images/blog/2015-06-17-entrepreneur.jpg %}

I also find that Google Golang is interesting and it might be useful for us later. I bet my investment on it and found [Golang Vietnam](http://golangvietnam.org.vn), a network of Golang Developers in Vietnam.

Based on some connections with friends in Singapore, I start asking people about other software businesses. And begin to find my first early member. I named a team [Dwarves Foundation](http://dwarvesf.com). Dwarf is the small and misshapen creatures in Norse Mythology that are wisdom, natural good at smithing, mining, and crafting. My aim is provide Tech Partner service to venture and startup.

{% img /images/blog/2015-06-17-dwarves.jpg %}

## Our values

We are young and eager to learn. We have passion and experience in making cool products, esp. cloud and mobile apps. We want to help people solve their problems by using our solutions. We build 

- Backend and systems usually with Go by Google. It's new language that is designed for large and robust system with power of native concurrency support.
- World class native mobile apps in Android and iOS. We apply 
- Frontend with Angular or React

At Dwarves Foundation, I offer 3 kinds of services:

- **Tech Partner Service**: If you want to start a startup, new venture (and may know nothing about engineering). Great! This is what we can help me. We take care of a whole platform, system and applications, from dev to ops. We deliver it to your customer as your inhouse development team. Currently, we are Tech Partner with [Pear Comms](https://pearcomms.com) and [SalesInOne](http://salesinone.com). We will back to it later.

- **Development Labs**: Our dwarves will help you visualize your dream into real product with best quality it can be.

- **Talent pool**: If you just need a hand to help you accomplish some tasks or some pieces of your project. We can bring you the best talent in Vietnam with lowest charge rate ever. 

{% speakerdeck 1f4ffd51e8b049e6bce5dbdefad3786e %}

## Workflow at Dwarves Foundation

### For project management 

We use Trello with Kanban theory to organize tasks. Tasks will be flew from left list to right list. We also organize lists into Scrum steps. So this will be liked: 

- Sprint Planning
- Current Sprint
- In Progress
- Blocked
- Testing
- Bugs Report
- Approved

{% img /images/blog/2015-06-17-trello.png %}

For each project, we will have *Sprint planning meeting* for Project Manager to explain project details to project members. User stories will be converted into cards or tickets and added to Trello list > **Sprint Planning**. 

Usually, one sprint is about 1 or 2 weeks, we have weekly meeting to break user stories into tasks and add them to list Current Sprint. It's also our target for this week, we have to get in done. This time, cards need to have requirement and non requirement specification. And sometimes, if this task has some special requirement that developers need to care about, the Project Manager need to add **Acceptance Criteria**.

{% img /images/blog/2015-06-17-criteria.png %}

As a customer, you are granted permission to access Trello Board to give feedback or be a tester. And most of my customers are happy with it.

The template for this workflow can be found at https://trello.com/b/WYgcFBgl/sprint-template

### For source code management 

We use `git` and GitLab. It's more like GitHub but for enterprise. You can have one by downloading and deploying it yourself.

We apply [Gitflow](http://danielkummer.github.io/git-flow-cheatsheet/) and `Merge Request` (some people may call it Pull Request) between developers to gain some benefits from it:

- Can deliver anytime because branch `master` is always stable.
- Quality source code: always review it after it's merged into branch `develep`
- High efficiency collaboration between team members.

{% img /images/blog/2015-06-17-gitflow.png %}

There's another article about it on Atlassian site: https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow

Project Manager will be the one that init the repository on Git with some imporatant informations. For every ticket on Trello, developers need to create one issue in GitLab, create new feature branch and start the implementation on it. The `git commit` command must attach with one or more than one issue. 

{% img /images/blog/2015-06-17-commit.png %}

After that, one merge request will be created and the person who has responsibility to review this request need to check over the source code then `Accept` or `Reject` the `Merge Request`.

This card will be moved to list `Testing`, QC will be assigned to test this feature and so on.

### For Communication

We use [Slack](http://slack.com) as the main hub for all informations, from team meeting, hangout, manage tasks and source code ... 

{% img /images/blog/2015-06-17-slack.png %}

Slack support lots of methods to add integration. So the powerful it can be depends on what you integrate into it.

Finally, at the end of the day, we do daily meeting via hangout or face to face at the office to summary what we have done today and what we plan to do tomorrow. The project manager will be the one to write it down and make weekly report to customer.

All the processes out there are just to make the team stick together and development plan works. All team members need to understand their roles, team vision and know how to make things go on the right tracks. 

Read more about [Teamwork](/2014/12/05/it-is-hard-to-become-a-team-member/).