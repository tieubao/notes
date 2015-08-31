---
layout: post
title: "Working On: Teamwork utilities in Slack"
date: 2015-08-31 04:09:54 +0700
comments: true
categories:
- teamwork
- slack
- working-on

keywords: teamwork, slack, working-on
description: Teamwork is one of many factors to the success. In my team, all members have to care about 2 main things of teamwork, Synchronization and Collaboration. Working On is a side project that integrated with Slack.

---

# Teamwork

It all happened because of the important of the true teamwork in every projet. Teamwork is one of many factors to the success of the team or the company. And I also wrote a [post](http://tieubao.me/writing/2014/12/05/it-is-hard-to-become-a-team-member/) about it last year. At Dwarves Foundation, teamwork is all about Synchronization and Collaboration, which mean, as a members, you need to know about and align your goal to the team goal; you have to know what other people are doing and let people know what you're doing. It's also about the way of communication between members, it's not just hard skill, it's better if you can stay and play well with others. We applied Slack and Trello to keep us posted, but it seems it's not enough. The information about other members work need to be more details but should not some kind of micro management. There is a difference between the proactive and micro management, the awareness about the micro management will kill team productivity.

# Digest Systems

And I think about how could I make the team better? Last time at Lifebox, we created Lifebox Daily which is a productivity tool based on [Done list theory]() which very similar with [iDoneThis](https://idonethis.com). Later we found that Google Group digest system is free and good enough to replace the old Lifebox Daily. Everyday, team memmbers just need to send an email with the same title (like current date) to Google Group Email and on next day morning, Google Group will send a digest message including all done items of other members. So that the team can aware of what happened yesterday and keep them motivated.

{% img /images/blog/2015-08-30-google-digest-01.png %}

{% img /images/blog/2015-08-30-google-digest-02.png %}

After 2 months experiment, some members said that they felt the others are a little inactive and team culture cannot build from there. That is really a big issue that we need to solve it as soon as possible. If the team don't share the same things, they can easily be broken up. So we decided to apply daily scrum in the morning and digest at the end of the day but things turned out there was lots of process and we spent more time on meeting.

# Working On

To keep thing simple but work, we built [working-on](https://github.com/dwarvesf/working-on) which is a combination of donelist theory and scrum daily concept, integrated with Slack slash command, support public channel and project group for multiple teams. We had successfully applied it to our team and we want to share it to you. Too simple to setup via Heroku.

### How to use

When you start to do something, go to Slack and use slash command `/working-on <what are you going to do>` to let your teammates know about it. The geek can use cli. And it just take you 5 seconds.

On the next day morning, the bot will make the digest and post it to the digest channel, so that everyone else can have a full view, even the manager or leader. It's also make others motivated by seeing what you've achieved.

{% img /images/blog/2015-08-30-working-on.png %}

And the team feel happy with Working On bot. They started using it daily. 

Working On is built on Golang, Gin framework with support from Heroku One click deploy button. You can deploy one for your team at [Github](https://github.com/dwarvesf/working-on).

**Repository: https://github.com/dwarvesf/working-on**
