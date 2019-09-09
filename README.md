# my blog

this is my blog. specifically, this is like the third incarnation of it.

this time round i decided to use [zola](https://getzola.org), and its theme is
based of off [zerm](https://github.com/ejmg/zerm), which is a hugo port i also
made. there are quite a few customizations i've made to the theme for my own
blog, and i'm not convinced they're all that good, so use at your own risk.

## setup

this website has GitLab's CI/CD deploying it upon each commit. It's hosted over
on AWS S3, and Cloudflare handles DNS/caching. I use a Makefile to drive most
of my stuff, too. I based most of this off of [aidan's
setup](https://raptros.com/blog/late-2018-relaunch/).

## building

install zola, then:

```
git clone --recursive git@github.com:ejmg/ageof.info.git # or https://github.com/ejmg/ageof.info.git
cd ageof.info/
make serve # or build, if you want to deploy.
```

Everything with respect to blog content (styling, writing)is actually in the
`site/` directory, output will be in `target/` if you build it using the
Makefile.

## misc

1. i don't particularly recommend anyone to use my webdev code as an example,
   it's not pretty. i just tweak sass code until it works, tbqh.

2. this was the repo i originally fleshed out zerm in, so there's some gunk in
here that isn't relevant anymore but that i've yet to clean out. please don't
mind my bytes 👻.

# license

Code is MIT, content is Creative Commons SA 4.0.
