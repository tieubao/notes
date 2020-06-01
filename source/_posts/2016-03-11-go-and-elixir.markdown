---
layout: post
title: "Go and Elixir"
date: 2016-03-11 14:24:20 +0700
comments: true
categories: 
- thought
- programming
- language

keywords: thought, programming, language
description: 

---

I'm the founder of Dwarves Foundation, a software development firm that based in South East Asia. We use both languages in production and have developed some web apps, systems using Go and Elixir.

First of all, I have to say both languages are great, same as the communities. They are both concurrency languages, but there are some differences in their souls.

If you come from the background of Python, Go take the same approach of 'manual language.' Go is a minimal language. Go replaces the inheritance by the composition (which said by someone "Inheritance was a bad dream that (most) people have woken up from.") There is no magic in Go source code. Also, with the support of 'gofmt' (syntax formatter), it brings you the transparency of knowledge between your source code and others. You will feel no hesitation to read the source code of your friends or open source libraries in Github.

**Go is the best fit for API services and command line tool development**. Go is a 'have-to-learn' language for engineers.

Go brings you the feel of 'it just works' language after years working with it in several projects. Talking a little bit more about Go web frameworks, they do have a good framework for web development: Gin, echo, goji ... are the minimal one like Flask, Express or Sinatra; Beego, Revel are full-fledged or battery included frameworks like Django, Sails or Rails. However, at the end of the day, you don't want to use those frameworks or ORMs at all, you will just want to use built-in components of Go to build your new system. That's the moment when you have been enlightened to feel the minimalism of Go. "It just works," the gopher in you will speak to yourself.

You can take reference to [mattermost](https://github.com/mattermost/mattermost-server) repository to learn more the stack of Go as API server and React for web front-end.

---

After the long time working with Go and if you are the type of lazy developers, you will find that Go language itself isn't wise enough. Go makes sense outside of the web dev world. As a web developer, you still need the super fast speed, but you want something as cool as Rails, Elixir/Phoenix is good for you.

- Functional Programming vs. OOP ([Object-Oriented Programming: A Disaster Story](https://medium.com/@brianwill/object-oriented-programming-a-personal-disaster-1b044c2383ab))
- Fault tolerance. It's something Go doesn't have. If an Erlang process (not an OS process, an Erlang process) dies, it dies. Every other process on the system is fine and Erlang has facilities to have processes monitor other processes and bring each other back up if one dies. It's just amazing. Absolutely beautiful.
- Abstract Syntax Trees. The one that brings **Homoiconicity** which is believed to be the source of power of Lisp.

---

We are soldiers. We use different guns or knives in different purposes.
At the moment, our stack is as below.

- Go for API server, cmd line tools, and DevOps scripts.
- Elixir for web development.
- Vue.js for frontend development