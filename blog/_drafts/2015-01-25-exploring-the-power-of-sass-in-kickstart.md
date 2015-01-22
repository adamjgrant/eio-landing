---
layout: post
title: "Exploring the power of Sass in Kickstart 3"
tags:
 -
---

With the [release of Kickstart 3](http://getkickstart.com) early this year, we dove deep into the power of Sass 3.4. 
With that came a ton of documentation on all the things you can do in K3. While extensive docs
are generally a good thing, it can be hard to surface some of the awesome things you can do.
Let's go over a few.

# One mixin per component

<img class="left" src="http://cdn.everything.io/home/blog/power-of-sass/bootstrap-navbar.png" />

## Naming madness

Take a look at just how much markup is needed for a navbar in Bootstrap 3. We felt like
all this redundant naming, `.navbar`, `.navbar-button`, `.navbar-collapse`, etc put way
too much markup on websites.

Front end devs have a way of forgetting that the characters they put in their HTML are no
difference in terms of their negative effect on page load time than the characters they put in a CSS or JS file. In fact,
depending on how the application is structured, it can be even worse.

In Kickstart, we felt there ought to be a way we could abide by a **One mixin per component** rule.
This means your markup has a very basic HTML structure of a navigation menu and **needs only one class**.

## How it's done in Kickstart

Kickstart's navbar comes in just three main chunks:

1. A div to hold the background color of the navbar.
2. The navbar itself, allowing it to move and size itself freely from the color distribution.
3. A ul structure to simply list out the navbar's menu items

<img src="http://cdn.everything.io/home/blog/power-of-sass/navbar1.png" />

    <div class="mynav">
      <nav>
        <ul>
          <li>
            <a href="/">Hi, I'm a menu item.</a>
          </li>
        </ul>
      </nav>
    </div>

Since we only need one class, we only need one mixin!

    .mynav {
      @include navbar();
    }

Although you can go much further, this is the bare minimum needed for
a navigation bar in Kickstart.

But don't we miss some of the nice options from the alternative method, like `.navbar-left` 
and `.navbar-right`?

We decided to lean on the structural integrity of HTML itself for this. With the power of
flexbox and CSS3, simply adding extra `ul`s tells the navbar to space itself out accordingly.

<img src="http://cdn.everything.io/home/blog/power-of-sass/navbar2.png" />

    <div class="mynav">
      <nav>
        <ul>
          <li>
            <a href="/">Left.</a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="/">Right.</a>
          </li>
        </ul>
      </nav>
    </div>

Even create a left, center, and right menu.

<img src="http://cdn.everything.io/home/blog/power-of-sass/navbar3.png" />

    <div class="mynav">
      <nav>
        <ul>
          <li>
            <a href="/">Left.</a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="/">Center.</a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="/">Right.</a>
          </li>
        </ul>
      </nav>
    </div>

The Navbar is just one example, all of Kickstart's core components are single-mixin.

See more about Kickstart's navbars in the [Navbar Docs](http://getkickstart.com/docs/3.x/ui/navigation/)

# An end to variable madness with Sass Maps

# Dead simple media queries

# Keyword-based responsive columns

# A theme file that's actually approachable

# Smart contrast

e.g. Coloring navbar text with $background

# Truly modular CSS components
