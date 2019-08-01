# Terminal for Zola

This theme is adopted from [@panr's](https://twitter.com/panr)
[Terminal](https://github.com/panr/hugo-theme-terminal/) theme for Hugo.

# Customizing

The theme was built using [PostCSS](https://postcss.org/). I don't really care
for the extra overhead myself, but I preserved the styling in my port to stay
true to the original for other end users and to preserve the nicely organized
CSS stylings. This means you will want to use PostCSS for any major changes to
styling without having to refactor a good amount of CSS. The good news is that
PostCSS is only used as a pre-processor here, so you won't be running any
unnecessary JS on the browser; we only use it to transpile PostCSS compliant
CSS into web-browser compliant CSS.

After modifying your desired stylings, run the following from the root of the
theme directory.

```
npm install
npm i yarn
yarn build
```

This ought to generate the minified contents of `style.css`, etc., into `static/assets/`.
