+++
date = "2015-04-28T15:58:07+09:00"
title = "Usage"
categories = ["usage"]
tags = ["config", "document"]
+++

## Add more document pages

You can create more pages by `hugo new` command.

If you want to quick access for the page, you can include it in "main menu" of your site
by configuring it as `params.mainMenu` in your `config.toml` (or _config.yaml_):

```
# config.toml
[params]
  mainMenu = ["<your-page-name>", ...]
```

Then you can access the page by link in navigation bar on top of the site.

It is recommended to create the page on top of your `content/` directory if you
want to access it by navigation bar.
