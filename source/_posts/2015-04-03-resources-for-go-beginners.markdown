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

## In short

{% img /images/blog/2015-04-02-golang-in-a-nutshell.png %}

Go is a better C++. In 2015, its mission is trying to replace C in some parts. Many companies had ported a few parts of their system to Go. Go currently competes with Java in performance; with amazing syntax and features. Go is used to design system or web service. Somebody try to compare it to Rust, but they are not the same. Rust is lower level than Go and so called the better C.

For beginner:

- Read some background about Go to get motivation.
- Install Sublime or Vim as Editor
- Learn syntax through the Playground, which can be found on Golang.org
- Try one full-fledged MVC Web Framework to write a web app
- Explore the Community and Golang packages

## Language Background

- The purpose of the language, the story behind can be found at: https://golang.org/doc/faq
- Convention: https://golang.org/doc/effective_go.html
- Wiki: https://code.google.com/p/go-wiki/w/list

## Workflow

[Writing, building, installing, and testing Go code](https://www.youtube.com/watch?v=XCsL89YtqCs)

{% youtube XCsL89YtqCs %}

## Language & Syntax

- Gocon Tokyo 2014: http://talks.golang.org/2014/gocon-tokyo.slide#1
- Go Training: https://github.com/ArdanStudios/gotraining
- Introdution to Go: http://go-talks.appspot.com/github.com/davecheney/presentations/introduction-to-go.slide#1

## Editor

### Sublime Text with GoSublime: 
- [Using Sublime Text for Go Development](http://www.wolfe.id.au/2015/03/05/using-sublime-text-for-go-development/)

### Vim with Vim-go: 
- [Vim as Go language IDE](http://farazdagi.com/blog/2015/vim-as-golang-ide/)
- [Go development environment for Vim](http://blog.gopheracademy.com/vimgo-development-environment/)

## Web Framework

### Full MVC:

- Beego
- Revel

### Sinatra alike

- Martini
- Negroni: same author as Martini, but have some magics inside it.
- Gin-gonic: Martini like but with extremely fast in term of performance
- Goji

### Separated

- Gorrila packages

## Package Manager
List package management tools: https://github.com/golang/go/wiki/PackageManagementTools. They are divided into

- Vendoring: Like Bundler in Ruby or npm in Node
- Go Version Managers: Like rvm in Ruby
- Revision Locking
- Import Proxies

## Community in Vietnam

- Facebook Page: https://www.facebook.com/golang.org.vn
- Facebook Group: https://www.facebook.com/groups/golangvietnam
- Github: https://github.com/golang-vietnam/