+++
date = "2016-05-04T17:39:07+09:00"
title = "Usage"
categories = ["usage"]
tags = ["config", "document"]
+++

## Add more document pages

You can create more pages by `hugo new` command.

```
$ hugo new page-name.md
```

If you want to quick access for the page, you can include it in "main menu" of your site
by configuring it as `params.mainMenu` in your `config.toml` (or _config.yaml_):

```
# config.toml
[params]
  mainMenu = ["<your-page-name>", ...]
```

Then you can access the page by link in navigation bar at header of the site.

It is recommended to create the page on top of your `content/` directory if you
want to access it by navigation bar.

## Add Index Page

`Index` page shows all your page list in section hierarchy.

To add `index` page to your site, follow these steps:

1) Create `index/_dummy` page by `hugo new` command:

```
$ hugo new index/_dummy.md
```

2) Add `index` to `Params.mainMenu` in config file:

```
# config.toml
[params]
  mainMenu = [..., "index"]
```

## Categorize and Tagging pages

You can add one or more _categories_ and _tags_ to pages.

All category list appears as drop-down menu at the header navigation bar.  
If you set `params.noCategoryLink` true in your `config.toml`, the drop-down menu disappears:

```
[params]
  noCategoryLink = true
```

## Other Configurations

Here is an example of `config.toml` including all customizable parameters for this
theme:

```
baseurl = "http://your-site"
title = "Your Site"
theme = "bootie-docs"
copyright = "Copyright (c) 2015, Your Name; All rights reserved."

[params]
  description = "Brief description for your site."
  withSitePosts = true
  mainMenu = ["about", "usage", "index"]
  #noCategoryLink = true
  repositoryUrl = "http://your-repository-url"
  highlightStyle = "github"
```

* **Title** is shown in header navigation bar and on top page.
* **Copyright** is shown in footer (optional).
* **Params.description** is shown on top page.
* When **params.withSitePosts** is set true, a link appears on top page which leads
you to the listing page of the posts in your site under the `post/` directory.
* **Params.repositoryUrl** is shown in footer (optional).
* **Params.highlightStyle** is used to change the style of `highlight.js`.  
You can find available styles in
[static/css/highlight](https://github.com/key-amb/hugo-theme-bootie-docs/tree/master/static/css/highlight)
directory.
