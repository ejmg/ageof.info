+++
title = "digitally crossing the southern border in 2020"
description = "this isn't legal advise and there's no point resisting, but let's say  you are stubborn about those frilly things called 'civil liberties' and want to make a point."
date = 2020-01-20

insert_anchor_links = "right"

[taxonomies]
tags = ["usa", "mexico", "traveling", "privacy"]
categories = ["civil liberties", "tutorial", "government"]

[extra]
+++

# the year is 2020 and you want to visit mexico

in particular, you are visiting by land. this doesn't make much of a difference
[INSERT CITE](), but let's keep the scope to crossing back and forth across the
american-mexican border; in fact, let's say you're crossing at Presidio and
Ojinaga as your dear author will have done by now.

furthermore, you are, like the average american, completely wired up and
dependent to the modern internet. your entire life, to some moderate to
significant degree, is dependent both upon the compact computers we carry
around and the secrets they contain within. for most people, these are things
you want to keep safe and secured! what should you do to prepare?

# preparing

## scenario 1: i do not care

well, if "government abuse" is an issue that doesn't keep you up at night and
you just really don't care about these silly things called "due process",
"privacy", or "freedom of speech", then nothing! congrats! **you are now ready
to cross the border, citizen.**[^1]

## scenario 2: i do care

but what if these things concern you? here's a quick outline to help guide your
way.

### before crossing

1. backups

before anything else, realize that the federal government reserves the right to
confiscate your personal devices for forensic analysis [CITE](); in particular, in the
case you do not consent to them going through your device/accounts willy-nilly,
they are going to be moreso inclined to take what you have. as such is the
case, i highly advise you take backup devices, i.e. a "burner" laptop/phone.

luckily for me, i have an old lenovo x131e impulsively bought from ebay + my
old LG G4 android phone. if i were to "lose" either of these while crossing, i
wouldn't care too much if i never saw them again or if they got returned in
damage form [CITE]().

2. secure your devices ahead of time

now, with your "burner" laptop/phone handy (isn't it fun to LARP?), it's time
to encrypt your devices. why is this important? well, if border agents decide
that your personal devices are worth looking into, there's a good chance they
might want to exfiltrate data out of them, with or without your direct
permission. a way to prevent this, of course, is to make that data gibberish to
them and impossible to access via encryption.

for my x131e, i took the opportunity, as a masochist[^2], to install arch linux on
my device with a LUKS on LVM partition scheme[CITE](), but i personally
recommend to anyone familiar (or even new) to linux to simply stick with
Ubuntu/Debian, which come with installers that are hard to mess-up and allow
disk encryption as an option. make sure to choose a strong passphrase that you
won't forget!

on the other hand, i opted to go with android's built in full disk encryption
functionality. unlike arch linux, this turned out to be **very confusing to get
working**. after easily more than 10 or so attempts, 30-60 minutes of googling
and researching, i figured out that to get my LG G4 to successfully encrypt, i
needed to:

  i. enable airplane mode
  ii. remove the SIM card
  iii. remove the micro-SD card
  iv. **then** enable full disk encryption.

this issue really wasn't documented in full anywhere - i pieced it all together
from a scatter set of SO and Reddit posts from fellow, similarly confused, LG
G4 users. for some, doing only step `i` or `ii` worked for them, for me it took
all of them.

**congrats**, you now have disposable devices that you feel safe to both lose
indiscriminately and for which are difficult to access when *turned off*.

3. minimize your footprint

despite having our devices, let's say that the feds could theoretically force
you into giving access to the device. what do you do now?[CITE]() well, assuming you
have a burner phone/laptop now, one easy thing to do would be to minimize your
own presence on your device. i know it sounds a bit double-speak'ish, but the
reality is that if you don't have any accounts active on your device (or the
apps themselves even installed!), then even if given access to the
device... there's nothing to do! you can easily then install everything you
need post-border.

put more explicitly: **minimize the surface of exposure**.

this includes things like:
- preferably, but most difficult, install nothing important until after you cross 🙂
- regardless of above, logout of all sessions for your burner devices
- for phones, delete the application for very private/personal things, like gmail and messaging applications
- 

- before crossing
  1. backups
  2. secure your devices ahead of time
     - phone
     - laptop
  4. minimize your footprint
     - passwords and storage
     - accounts and access
     - log out and delete local data
     - delete online presence(s) if possible
     - deactivate, shutdown
- at the crossing
  1. do not give permission for access, search
     - clarify
     - deny
     - digress
  2. resistance is futile 🙂
     - now is the time when being a US citizen is somewhat useful
     - do you like the idea of being detained all day?
     - playing it safe, i.e. "fuck you, take it"

---
[^1]: or you have a high time preference and/or have a cynical outlook for the
future of technology and its relation to our political rights. i pass no
judgment either way.

[^2]: at risk of inflamming arch linux users, as an arch linux user of 2+ some
years, it has actually been the best linux experience of my life. the x131e
turned out to have a small annoying wifi driver issue when initially
installing, but was quickly fixed with an alternative set of drivers available
via pacman.
