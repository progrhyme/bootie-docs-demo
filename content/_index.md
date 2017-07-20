+++
date = "2015-04-30T14:16:05+09:00"
title = "_index"
+++

## Introduction

[Bootie Docs](https://github.com/progrhyme/hugo-theme-bootie-docs) is a theme for [Hugo](http://gohugo.io).
Follow the instructions on Hugo site to install _Hugo_ and _Hugo Themes_.

This theme is developed to be a suitable one for documentation, especially for software documentation.

_Bootie Docs_ shold be simple enough to start with, and powerfull enough to organize multiple document pages.

## Quickstart

Suppose you already installed **Hugo**.

```
hugo new site /path/to/site
cd /path/to/site
mkdir themes
git clone https://github.com/progrhyme/hugo-theme-bootie-docs.git themes/bootie-docs
# add some contents to your site
hugo server -t bootie-docs
```

### Convert your _README.md_ to _Bootie Docs_

First, create `_index.md` by `hugo new` command.

```
hugo new _index.md
```

Next, copy the content of your _README.md_ to __index.md_.

Then you will see the content at the top page in your site.

## Learn More

You can see more detailed usage of this theme and complete configuration on
[Usage](usage).

[About](about) page shows you overview of features and dependencies which
_Bootie Docs_ has.
