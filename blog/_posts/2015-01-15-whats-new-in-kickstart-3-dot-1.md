---
layout: post
title: "What's New in Kickstart 3.1?"
tags:
 -
---

Kickstart 3.1 has [officially been released](http://getkickstart.com). Here's what's new:

- New [media query shortcuts](http://getkickstart.com/docs/3.x/grid/#media-query-shortcuts).
- Improved [navigation bar performance](http://getkickstart.com/docs/3.x/ui/navigation/).
- Improved [generic list styling](http://getkickstart.com/docs/3.x/ui/typography/#lists)
- Support for vendor components in coffeescript directory (previously, only Sass was supported.)*
- Debouncer is now multi-threaded. Run batch processes each with their own debouncer.
- Native [shortcut support for Chopin](http://getkickstart.com/docs/3.x/ui/#chopin-shortcuts).
- Documentation for Kickstart's [jQuery free selectors, k$.$ and k$.$$](http://getkickstart.com/docs/3.x/functions/element-selector/)

Bugfixes

- Fixed issue where modal backdrop appeared rounded and cut off in some browsers
- Better docs navigation. See the section of the page you're currently viewing.
- Fixed alignment of fluid and fluid-fixed navbars where left edge of text would not line up with wrapper.

*Only available/relevant for gulp, jekyll, node.js usage

To update, simply update your gem or pull the latest from the Kickstart repo.
