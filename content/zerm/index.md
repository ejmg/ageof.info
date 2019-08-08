+++
title="what is zerm?"
# Don't make the description long, it'll make the theme ugly.
description="a basic demo of zola."
date=2019-08-07

[taxonomies]
tags = ["rust", "test", "zola"]
categories = ["programming", "misc.",]

[extra]
+++

This is zerm, a minimalist theme for Zola based off of
[panr's](https://twitter.com/panr) theme for Hugo.

While it's largely faithful to the original, there are minor changes:
- no prism.js integration, instead we use Zola's syntax highlighting to reduce overhead.
- removal of PostCSS and leveraging Zola's use of Sass for simple styling.
  - much thanks to [Paweł
    Romanowski's](https://github.com/pawroman/zola-theme-terminimal/)
    independent fork of Terminal. By the time I discovered it, all I had left
    was converting PostCSS to Sass and he saved me the small overhead involved.
- no preview images. I want a theme that is focused on content.
- tags are included as post-meta data to focus on content.
- categories are included, though functionally are no different from tags.
- Other small, opinionated changes that I think lend to increasing the
  minimalism of Zerm as well as its overall aesthetic.
  
Things this theme does not have but either Terminal or Terminimal might:
- better short-codes for things like embedding videos or images, though I will
  work on this over time.
- Better support for things like comments and social media. As of now, I have
  no plans to add this but [PR's are always
  **welcomed**](https://github.com/ejmg/zerm/pulls).
  
A quick demo:

# Header I

`inline code`

```rs
fn main(n: String) {
    println!("hello, zola!");
}
```

# Header II

> a somewhat kinda maybe large quote that maybe spans
> more than one line but I mean really who even cares
> okay maybe I do but point being is yes nice.

# Header III

| hello | tables    | nice |
|:-----:|:---------:|------|
| wow   | much love | yes  |


  
Like zerm? Then [install
Zola](https://www.getzola.org/documentation/getting-started/installation/) and
[get started](https://www.getzola.org/documentation/themes/installing-and-using-themes/#installing-a-theme)!

