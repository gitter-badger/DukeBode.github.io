---
title: vimium
date: 2020-01-08 19:29:21
cover:
tags:
---

Vimium is a Chrome extension that provides keyboard-based navigation and control of the web in the spirit of the Vim editor.

<!-- more -->

### vimium 
[官网](https://github.com/philc/vimium)

```Custom key mappings
# Insert your preferred key mappings here.
map h previousTab
map l nextTab

map H scrollLeft
map J scrollPageDown
map K scrollPageUp
map L scrollRight

map gh goBack
map gj scrollToBottom
map gk scrollToTop
map gl goForward

map th firstTab
map tl lastTab
map tn createTab
unmap t

map xn removeTab
map xh closeTabsOnLeft
map xl closeTabsOnRight
map xo closeOtherTabs

map f LinkHints.activateModeToOpenInNewTab
map o LinkHints.activateModeToOpenInNewTab
map mo Vomnibar.activateBookmarksInNewTab
```