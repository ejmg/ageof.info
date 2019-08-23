+++
title = "why writing a linked list with safe rust is so damned easy"
description = "i'm working through data structures and algos with rust, and i dislike this common misconception immensely"
date=2019-08-24
draft = true

insert_anchor_links = "right"

[taxonomies]
tags = ["rust", "data structures", "tepid programmer takes"]
categories = ["computer science", "programming"]

[extra]
+++

honestly, it all started with this:

<blockquote class="twitter-tweet  tw-align-center"><p lang="en" dir="ltr">Hacker News: aren&#39;t linked lists impossible in rust?<br><br>me, trying to figure out why std::collections::LinkedList is twice as fast as my CS 101 C linked list <a href="https://t.co/lxgiDBxLpn">pic.twitter.com/lxgiDBxLpn</a></p>&mdash; steveklabnik (@steveklabnik) <a href="https://twitter.com/steveklabnik/status/1039266177007144971?ref_src=twsrc%5Etfw">September 10, 2018</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

i've been [working through Hands-On Data Structures and Algorithms with
Rust](https://github.com/ejmg/hodsa), and in the process i've been doing a lot
of supplementary reading over rust's stdlib and generally "why" rust is the way
it is. i love the language, and i've found the answers in major community
resources, like the Rust Book, extremely satisfying.

all through that, though, when i quickly google something like linked lists, i
[keep seeing the same
article](https://rcoh.me/posts/rust-linked-list-basically-impossible/) for
which this blog post alludes to and, more importantly, see how that article is
repeatedly taken at face value. seeing Klabnik's tweet (rightfully) bemoaning
this opinion finally set me off to write this article.

before moving on, i want to make it clear right now:
1. **writing a linked list in safe rust is not actually hard**
2. this post not to be taken as an attack on any individual, especially the author linked above[^1].

# neither an original argument nor counter-argument

what really lies at the heart of the notion is that writing data structures,
particularly those with graphs and/or self-referential structures, is difficult
in rust. it is not; in fact, that's what the first major chapter of Matzinger's
book does, and he guides you through the entire process using nothing but safe
rust.


---
[^1]: in fact, i read their post with a positive and constructive tone towards
    both rust and the issue generally. it's the face value others take away
    from its title that serves as the actual problem, especially as we approach
    2 years past its publication.
