+++
Categories = ["Continuation"]
Description = "An introduction to Phoenix"
Tags = ["Update"]
date = "2016-01-18T08:38:51-05:00"
menu = "Updates"
title = "Phoenix"

+++

Work is progressing on revising the SG Weblog's Dart scripts into
[X-Tags](http://x-tag.github.io/).  We're also pushing forward on a profound
revision to [Phoenix Engine in Go](https://github.com/go-phoenix/phoenix).

<!--more-->

## Web Components

We think Web Components are a good approach to solving the problems of
declarative DOM encapsulation without resorting to programming techniques which
turn web standards on their heads.  We've been sketching up some example Web
Components using X-Tags, which embed very cleanly in Hugo.  Experiments with
[Polymer](https://www.polymer-project.org/1.0/) are also in the works.

## Dash

One of SynapseGarden's top priorities is to deliver a packaged frontend toolkit
for Mindfork, which we're calling Dash.  Dash will be the foundation for the SG
core site, where our collaboration efforts will take place.  It will also be
suitable for others to build their own frontends to their own custom Mindfork
deploys.

We think Web Components will help us provide exactly what people will need to
build great Dash sites with minimal difficulty.

## Phoenix

[Phoenix Engine](https://github.com/synapse-garden/phoenix) is currently a
small, experimental OpenGL Scala game engine for building procedural universes.

Scala is a less-than-optimal choice for such a project.  We're exploring other
options for it, and have
[a small C++11 port](https://github.com/synapse-garden/phoenix-cxx).

A core design goal for Phoenix is to be suitable for fully fluid cross-platform
builds.  While the C++ version is suitable, its build tooling is a challenge for
junior developers to engage with.

Ultimately, Go's performance
[compares favorably with C++](http://blog.golang.org/profiling-go-programs).  We
have kept our eyes on Go packages for working with OpenGL and native windowing
for some time, and it appears these are now in good shape for production-ready
software.  Go's garbage collector is also now concurrent as of Go 1.5 and
reduces GC pauses to suitable intervals for game development.

We feel that Go will reduce barriers to entry for work on Phoenix, as well as
engaging what is a very active and healthy community ecosystem.  It also offers
fluid, simple concurrency structures and an amazingly clean build chain.

However, it lacks in-language compile-time generics, which could be a serious
performance issue in a CPU-intensive game engine.

### Compile-Time Generics in Go?

Therefore, we've developed a concept for a generative meta-engine in Go.
Phoenix will generate code using Go's packages, using an extensible set of
packages for UI, models, and graphics.  The first target project is a GUI SDK
for using Phoenix.

We think that thanks to [GopherJS](https://github.com/gopherjs/gopherjs), this
can be accomplished cleanly using Go, on essentially any platform a UI package
can be written for, i.e., Windows, Linux, OS X, iOS, Android, and browser.

We're very excited to demo the new Phoenix!

### Until next week!
