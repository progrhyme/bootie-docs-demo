+++
date = "2017-03-05T10:25:07+09:00"
title = "Usage"
categories = ["usage"]
tags = ["config", "document"]
+++

## Getting Started

See the [Quickstart guide at Home](../#quickstart) before reading the following contents.

## Add more document pages

You can create more pages by `hugo new` command.

```
$ hugo new page-name.md
```

If you want to quick access for the page, you can utilize Hugo's built-in
[Menu System](https://gohugo.io/extras/menus/) to customize _navigation bar_ in
header.

For this purpose, add an entry of `[[menu.main]]` in your `config.toml` (or
_config.yaml_):

```toml
# config.toml
[[menu.main]]
  name = "<Text to show>"
  url  = "<relative-path-to-page>"
  weight = <integer value>
```

Then you can access the page by link in navigation bar at header of the site.

See Hugo's documentation for more options of _Menu System_.

NOTE:

- Nested menus are not supported.
- Before **v1.3.0**, `[[menu.main]]` is not supported. Instead,
`[[params.mainMenu]]` is used for navigation menu.

## Add Index Page

`Index` page shows all your page list in section hierarchy.

To add `index` page to your site, follow these steps:

1) Create `index/_dummy` page by `hugo new` command:

```
$ hugo new index/_dummy.md
```

2) Add an entry of `[[menu.main]]` in config file which links to `index`:

```toml
# config.toml
[[menu.main]]
  name   = "Index"
  url    = "/index/"
  weight = 900
```

## Categorize and Tagging pages

You can add one or more _categories_ and _tags_ to pages.

All category list appears as drop-down menu at the header navigation bar.  
If you set `params.noCategoryLink` true in your `config.toml`, the drop-down menu disappears:

```toml
[params]
  noCategoryLink = true
```

## Add Search Form by Google

You can add **search form** on navbar by adding configuration param `params.searchDomain`:

```toml
# config.toml
[params]
  searchDomain = "your-domain.org"
```

This adds search form using Google site search.

## Other Configurations

Here is an example of `config.toml` including all customizable parameters for this
theme:

```toml
baseurl   = "http://your-domain.org"
title     = "Your Site"
theme     = "bootie-docs"
copyright = "Copyright (c) 2017, Your Name; All rights reserved."

[params]
  description    = "Brief description for your site."
  withSitePosts  = true
  searchDomain   = "your-domain.org"
  #noCategoryLink = true
  repositoryUrl  = "http://your-repository-url"
  highlightStyle = "github"

[[menu.main]]
  name   = "About"
  url    = "/about/"
  weight = 100

[[menu.main]]
  name   = "Usage"
  url    = "/usage/"
  weight = 200

[[menu.main]]
  name   = "Index"
  url    = "/index/"
  weight = 900
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

## Add site-customized CSS

You can add styles to customize site's UI into file: `static/css/site.css`.  
The CSS is loaded by _Bootie Docs_.
