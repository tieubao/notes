---
layout: post
title: "Dwarves Foundation"
date: 2015-05-29 00:53:06 +0700
comments: true
categories: 
- software
- development
- firm

keywords: software, firm, development
description: Story about Dwarves Foundation
---

After an interesting journey at [CloudJay](/a/cau-chuyen-khoi-nghiep-tu-lifebox-den-cloudjay-p1/), I took a short break for a month and feel that startup life is too hard for young people but it's really worth to be a part startup scene. Someone said, one year to live in a startup is better than five years working in the enterprise. And I think this is correct. I need to face more problems and be able to solve them myself to be more mature.

{% img /images/blog/2015-06-17-entrepreneur.jpg %}

I also find that Google Golang is interesting and it might be useful for us later. I bet my investment on it and found [Golang Vietnam](https://golang.org.vn), a network of Golang Developers in Vietnam.

Based on some connections with friends in Singapore, I start asking people about other software businesses. And begin to find my first early member. I named a team [Dwarves Foundation](https://dwarves.foundation). Dwarf is the small and misshapen creatures in Norse Mythology that are wisdom, natural good at smithing, mining, and crafting. My plan is to provide Tech Partner service to ventures and startups.

{% img /images/blog/2015-06-17-dwarves.jpg %}

## Our values

We are a team of geeks, hustles and startup veterans. We live around the world but most of us based in Saigon, Vietnam. We are (forever) young and always eager to learn. We have passion and experience in making cool products, esp. cloud and mobile apps. We want to help entrepreneurs solve real problems using our approachs and solutions.

- **Customer first**: We provide the service with high quality and no latency response time. Customers have to be happy.
- **Geeky style**: We can do anything, wear multiple hats, take multiple approachs from official to tricky way to achieve the goal.
- **Teamwork**: **_Synchronisation_** and **_Collaboration_** are the most important key things. You can read this topic: [It's hard to become a team member](/a/it-is-hard-to-become-a-team-member/). We apply agile process to keep our spirits stick together.
- **Proactive**: Pick your most productivity time to work. You need to figure out yourself what you want to do and what you want to contribute aligned to the team goal as a dwarf in the tribe. We are too busy to tell you.
- **Growth and sharing**: You can learn another skill from other teammates. We are happy to share it to you. And we believe that working hard and improving yourself everyday will make you paid back later. Read [this topic](https://www.quora.com/How-can-I-motivate-myself-to-work-hard) to keep yourself motivated.

## Our services

- **Startup Factory**: Our woodland is the trustworthy place where lots of ideas are validated, incubated, developed, iterated until product-market fit simultaneously and for successful ones, we turn them into new businesses. The formula repeats on its own. Moreover, we also provide startups with hands-on mentorship and seed investment programs, usually in exchange for equity.

- **Development Lab**: Our woodland is the trustworthy place where founders could come and acquire expertise for their business models. We offer a technical partnership that takes over their whole systems and applications from development, operation to maintenance stages. We are backed by a talented, ambitious and technology-heavy workforce with years of experience. Consequently, we guarantee world-class quality for delivered products across all platforms (Web, iOS, Android).

- **Talent pool**: Our woodland is the trustworthy bridge for the founders who are outsourcing products to connect with talented developers in Vietnam. We guarantee the most competitive prices among competitors in local market. It is the outcome of continuously building a wide network of trust between founders and talents. The price is worth it!

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


- About us: http://www.dwarvesf.com
- Github: https://github.com/dwarvesf
- Hiring: https://github.com/dwarvesf/WeAreHiring
