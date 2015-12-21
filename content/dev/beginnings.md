+++
Categories = ["Continuation", "Dev"]
Description = "Weekly update 2015-12-14."
Tags = ["Update", "Dev", "Dart", "Polymer", "Hugo"]
date = "2015-12-14T05:00:00-05:00"
menu = "dev"
title = "Beginnings"

+++

In which a brief overview of current SG software and roadmap is given.  This
week’s adventures: Dart, Polymer, and Hugo.

<!--more-->

Hello again.  This week our attention has been focused on creating a small
browser client for the prototype Mindfork backend we have running here:

{{< divid source >}}
{{< dart source >}}

## Polymer-Dart: does not play well with others.

The SynapseGarden Weblog is a [Hugo](https://gohugo.io) blog hosted on Github
Pages.  Embedded scripts must therefore require minimal modification to HTML
content, since it is generated from Markdown.

This sets the expectations well for our web client.  Right now we’re working
out the details of our client architecture, but there are some basic
requirements out the gate:

 - Must provide easily distributed reusable standalone components.
 - These components must be usable together in a greater app context.
 - These components must offer backend connectors for Mindfork.

We therefore kept these elements at the forefront during the week’s work with
[Polymer-Dart](https://github.com/dart-lang/polymer-dart).  Alas, it is far
from a match made in heaven.  While Polymer-Dart seems to meet our needs
nicely, the reality is that it has strong expectations about the structure
and content of the entire site it works within, to the extent that it
generates the HTML index which it expects to work with, with significant
mangling.

It’s possible this could be picked apart and found to be workable, and we’d
love for it to be.  However, it doesn’t look like this is the framework we
need for Dash.

## This week

The next section is a brief overview of our week exploring Polymer-Dart for
our Dash frontend.  In this section, we’ll outline what we’re working on this
week.

Right now, we have a simple prototype Mindfork service running at
https://mfp.synapsegarden.net:25000.  The source is linked above; we
encourage you to review the API and open a pull request if you see anything
you’d like to add.

In the meantime, we’re pushing forward on offering an embedded web login
panel and a few other features (e.g.  password reset) so that logins can be
handed out and automated collaboration begin in earnest.

## Dash you say?

Dash is a concept we’ve been hammering out for some time, for a very 
atteries-included framework for building apps which make use of Mindfork
backends.  Since SynapseGarden’s community and development will be driven by
the Mindfork backend, Dash will be used extensively in our web UI.

If our goal was to build our own webapp and backend, the obvious choice would
be to use an existing set of tools; Ember, Angular, React, and many others
offer excellent options for anyone who wants to build a particular frontend.

However, what we’re really looking to do is to provide tools for people to
build *with minimal effort* web applications that make use of community-driven
data on the Mindfork model.  That means collaboration, human networking, and
behavioral optimization.

While all of the aforementioned options may prove to be useful to this end,
what we will distribute to developers who wish to use Mindfork will not look
like a Javascript framework.  It may be a library, similar to d3js, which
intelligent data-driven elements can be used from in simple (or complex)
Javascript.  It may be a set of [Web Components](http://webcomponents.org/).
Our options are still open; however, we recently made the tough decision to
abandon our
[Clojurescript frontend](https://github.com/synapse-garden/dash-cljs).

## Dart you say?

We believe Dart offers a highly-structured and easily-tested systematic
approach to web application development.  While we want to offer an easy and
usable API to people who want to use Dash, we don’t particularly care that
it’s easy to open the hood and muck about with.  Most users should not have to
do that; those who do are intelligent enough to learn Dart, which is a very
easy and usable language from what little we’ve experienced.  Like Go, it
offers quite excellent tooling out of the box, and does not require any
third-party software besides the [Dart SDK](https://dartlang.org/).
There’s an excellent plugin for Intellij IDEA, if that’s your style;
otherwise, everything in the Dart SDK is comfortable to use from the command
line.

Ultimately, the needs of our community come first and foremost; we are also
considering ES6, and [X-Tag Web Components](http://x-tag.github.io/).

### See you next week!
