+++
date = "2016-05-07T07:17:07+09:00"
title = "Usage"
categories = ["usage"]
tags = ["config", "document"]
+++

## Add more document pages

You can create more pages by `hugo new` command.

```
$ hugo new page-name.md
```

If you want to quick access for the page, you can include it in _navigation bar_
in header by adding an entry of `[[params.mainMenu]]` in your `config.toml` (or
_config.yaml_):

```
# config.toml
[[params.mainMenu]]
  name = "<Text to show>"
  link = "<relative-path-to-page>"
```

Then you can access the page by link in navigation bar at header of the site.

Before **v1.0.3**, the link name must be same to page name just under `content/`
directory.  
After **v1.1.0**, you can add menu to any page in the site by the format above.

## Add Index Page

`Index` page shows all your page list in section hierarchy.

To add `index` page to your site, follow these steps:

1) Create `index/_dummy` page by `hugo new` command:

```
$ hugo new index/_dummy.md
```

2) Add an entry of `[[params.mainMenu]]` in config file which links to `index`:

```
# config.toml
[[params.mainMenu]
  name = "Index"
  link = "index/"
```

## Categorize and Tagging pages

You can add one or more _categories_ and _tags_ to pages.

All category list appears as drop-down menu at the header navigation bar.  
If you set `params.noCategoryLink` true in your `config.toml`, the drop-down menu disappears:

```
[params]
  noCategoryLink = true
```

## Add Search Form by Google

You can add **search form** on navbar by adding configuration param `params.searchDomain`:

```
# config.toml
[params]
  searchDomain = "your-domain.org"
```

This adds search form using Google site search.

## Other Configurations

Here is an example of `config.toml` including all customizable parameters for this
theme:

```
baseurl = "http://your-domain.org"
title = "Your Site"
theme = "bootie-docs"
copyright = "Copyright (c) 2015, Your Name; All rights reserved."

[params]
  description = "Brief description for your site."
  withSitePosts = true
  searchDomain = "your-domain.org"
  #noCategoryLink = true
  repositoryUrl = "http://your-repository-url"
  highlightStyle = "github"

[[params.mainMenu]]
  name = "About"
  link = "about/"

[[params.mainMenu]]
  name = "Usage"
  link = "usage/"

[[params.mainMenu]]
  name = "Index"
  link = "index/"
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
