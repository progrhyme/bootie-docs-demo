# Bootie Docs Demo

Demo and Documents for https://github.com/progrhyme/hugo-theme-bootie-docs .

# Development

Install and run demo site with _bootie-docs_ theme.

```bash
git clone git@github.com:progrhyme/hugo-theme-bootie-docs.git
git clone git@github.com:progrhyme/bootie-docs-demo.git
cd bootie-docs-demo
mkdir themes
ln -s /path/to/hugo-theme-bootie-docs themes/bootie-docs
hugo server [options]
```

## Publish Demo Site

```bash
git clone -b gh-pages git@github.com:progrhyme/hugo-theme-bootie-docs.git public
make publish
```

