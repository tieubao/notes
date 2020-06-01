---
layout: post
title: "Resources for Go Beginners"
date: 2015-04-03 15:41:41 +0700
comments: true
categories: 
- golang
- resource
- beginner
keywords: golang, vietnam, resource, beginner
description: All resources that will help Go beginner alot. I write it down while I'm still learning it.
---

# Overview

{% img /images/blog/2015-04-02-golang-in-a-nutshell.png %}

Go is a better C++. In 2015, its mission is to be a cloud language and to replace C in some points. Many companies had ported a few parts of their system to Go. Go currently competes with Java in performance; with amazing syntax and features. Go is used to design system or web service. Somebody try to compare it to Rust, but they are not the same. Rust is lower level than Go and so called the better C.

For beginner:

- Read some background about Go to get motivation.
- Pick your editor
- Learn syntax through the Playground, which can be found on Golang.org
	- Go by example: https://gobyexample.com/
	- Tour of Go: https://tour.golang.org/
	- Effective Go: https://golang.org/doc/effective_go.html
	- Go 101: https://go101.org/article/101.html

- Try one full-fledged MVC Web Framework to write a web app
- Explore the Community and Golang packages

{% youtube FTl0tl9BGdc?list=PLtTY3_zVDGOCwQ8SVTiUSrfOGFCC8G8du %}

# Language Background

- The purpose of the language, the story behind can be found at: https://golang.org/doc/faq
- Convention: https://golang.org/doc/effective_go.html
- Wiki: https://code.google.com/p/go-wiki/w/list

# Workflow

[Writing, building, installing, and testing Go code](https://www.youtube.com/watch?v=XCsL89YtqCs)

{% youtube XCsL89YtqCs %}

# Language & Syntax

- Gocon Tokyo 2014: http://talks.golang.org/2014/gocon-tokyo.slide#1
- Go Training: https://github.com/ArdanStudios/gotraining
- Introdution to Go: http://go-talks.appspot.com/github.com/davecheney/presentations/introduction-to-go.slide#1

# Editor

### Sublime Text with GoSublime: 
- [Using Sublime Text for Go Development](http://www.wolfe.id.au/2015/03/05/using-sublime-text-for-go-development/)

### Vim with Vim-go: 
- [Vim as Go language IDE](http://farazdagi.com/blog/2015/vim-as-golang-ide/)
- [Go development environment for Vim](http://blog.gopheracademy.com/vimgo-development-environment/)

# Web Framework

### Minimal

- [gin](https://github.com/gin-gonic/gin): Gin is a HTTP web framework written in Go
- [echo](https://github.com/labstack/echo): High performance, minimalist Go web framework
- [Beego](https://github.com/astaxie/beego): Full-fledged web framework

### Microservices

- [Go kit](https://gokit.io/): A standard library for microservices.

# Dependency Manager

In 2018, Golang published its official dependencies manager and integrated to go tooling. The `dep` repo can be found at: https://golang.github.io/dep/

Before that, there a list of package management tools: https://github.com/golang/go/wiki/PackageManagementTools. They are divided into

- Vendoring: Like Bundler in Ruby or npm in Node
- Go Version Managers: Like rvm in Ruby
- Revision Locking
- Import Proxies

# Community

### Global

- Slack: https://invite.slack.golangbridge.org/
- Go Users: https://github.com/golang/go/wiki/GoUsers
- Go User Groups: https://github.com/golang/go/wiki/GoUserGroups

### Community in Vietnam

- Homepage: https://golang.org.vn
- Facebook: https://facebook.com/golang.org.vn
- Github: https://github.com/golang-vietnam
- YouTube: https://www.youtube.com/channel/UCd52P8QD7ptDrDahP-HgyiQ

# News

- Reddit: https://www.reddit.com/r/golang/
- golang-nuts: https://groups.google.com/forum/#!forum/golang-nuts
- Golang Weekly: https://golangweekly.com/

# Links

- awesome-go: https://github.com/avelino/awesome-go
- Golang Proposal: https://go.googlesource.com/proposal/+/master/design
