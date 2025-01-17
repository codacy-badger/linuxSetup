# Xmetal's Linux Scripts

## Code Badge

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/ad3a390ed44e4ad28b786d760b2dd5f6)](https://www.codacy.com/app/Xmetalfanx/linuxSetup?utm_source=github.com&utm_medium=referral&utm_content=Xmetalfanx/linuxSetup&utm_campaign=Badge_Grade)

## NOTE: THIS is under heavy construction

## Introduction

A problem SOME users, even if they are experienced have when setting up some distributions, is all the post install tasks they have to do to setup a "workable" system. The tasks may not be difficult to do, but just rather they are time consuming. These scripts can hopefully give people a "helping hand" getting different distro bases set up.

While The main distributions listed are meant to be "Distro family bases", not ALL scripts are practically on all distros.

## Disclaimer

- Standard Disclaimer about how I am not responsible about what scripts you run on your own computer or what mistakes may occur

## Requirements

Some of these are auto-installed when the script is first run ... others I may add to "auto install" later

- `wget`
- `curl`
- `lsb` (different package names on different distros ) type packages
  - so lsb_release \* can be run
- `inxi`
  - (? if it's auto-installed or needed)
  - ... even I am not 100% sure about this one, but for later "DE/Distro" detection, inxi seems needed

\*\*\* if there is one thing that you may (you could always download my script's via the .zip file) "need" to install before running my script or getting them .... it'd be "git"

- `git`
  - this is to git clone the scripts; however, from the Github or Gitlab page for the scripts, there are ways to download the repo in a .zip form too ... in this case `git` is not "needed"

## Thanks

- Too many to list them all

- While I was likely to do this anyway, it is people like [Midfngr](https://www.youtube.com/user/midfingr/undefined) that inspire me to help other, though this entire idea started with no menus, and just a way for ME TO AUTOMATE some post distro install tasks, the idea this could help others is why it has grown so much

## Known issues

Right now if a supported version is not detected for whatever distro you are on, the scripts will not run in a sense. I AM NOT including "pre-releases" or betas as "yes this release is supported" until they are finally released for good from the distro maintainer. This means you may be on a beta release that is not "fully official yet" and the 'is it supported or not?" check will be a "no" ... this is by design ... if it makes better sense to change this later, I am open to the idea.

### Some RPMs are not being signed by the devs

- I can not say this is the case for all apps; however, to my knowledge GitKraken and Atom (see <https://github.com/atom/atom/issues/16499> for more info on Atom) ... they recommend ignoring it ... .and it still does work I can confirm but this doesn't seem like a good idea.

### KDE Neon Updating Output

- April 2020 update: I am not sure this is still an issue
- The output of the updating is not as clean as apt-get upgrade or apt upgrade ... not sure if I can really do anything as that is on the way they upgrade via the CLI and has nothing to do with my scripts

### MakeMKV Compiling

not sure this is an issue but IF something ever goes wrong (this is sort of a note-to-self)... check out [This commit](https://github.com/Xmetalfanx/linuxSetup/commit/58b1a2bb2e11817ffc01f8f645a5323ed4430602)

### XnviewMP AppImage issues

- [My Issue](https://github.com/Xmetalfanx/linuxSetup/issues/130)

- This is happening on recent... (0.98 and newer AppImages, I think) versions but AppImages 0.97 or earlier work fine on the distros having the issues with the newer AppImage

- Message/error: `"symbol lookup error: /usr/lib/libkrb5.so.3"` when running the newer appimages on certain distros

Xnview forum links

- [Link 1](https://newsgroup.xnview.com/viewtopic.php?f=82&t=41879&p=169714&hilit=appimage#p169714)
- [Link 2](https://newsgroup.xnview.com/viewtopic.php?f=82&t=41294)

note: i have the packages that the dev mentioned installed ... I checked that before even searching the forums ... others report having it installed as well, but the same issue persists

### Fedora and Bleachbit issues

- A few versions back (Fedora 32 perhaps), Bleachbit was removed from the repos and it doesn't seem to be in RPMFusion either.
- Using wget with the RPM files downloads what is labeled as an rpm file but is really an html document with alot of scripts
- I am not sure how to handle this but downloading the same exact RPM link in a browwser works fine and gets the ACTUAL RPM.
- I do not want to use anything outside the official repos (or something like RPMFusion in Fedora's case) OR the offical site's links

#### Solution to Fedora/Bleachbit issue

- Download the RPM via a web browser

---

## Links to other useful projects similar to this

### [Mr Sam Hewitt's Main Page and Scripts](https://github.com/snwh)

- [Fedora Post Install Scripts](https://github.com/snwh/fedora-post-install)
- [Solus Post Install Scripts](https://github.com/snwh/solus-post-install)
- [Ubuntu Post Install Scripts](https://github.com/snwh/ubuntu-post-install)

Thank you to Mr. Hewitt for some code ideas, when browsing through his projects

- Also thanks to [Fedora Install Script](https://gist.github.com/KingsleyOmon-Edo/711c0a79c29d532840bb5cae55b7c2d6) for ideas coming in future commits (posted this here to remember to give credit, before hand)

- More thanks go to KittyKatt and Screenfetch's contributors [Screenfetch on Github](https://github.com/KittyKatt/screenFetch)

---

## How to download via git

### In Arch

    `sudo pacman -S git`

### In Fedora

    `sudo dnf install git`

### In OpenSUSE

    `sudo zypper install git`

### In Ubuntu

    `sudo apt install git`

    - if that doesn't work `sudo apt-get install git`

## How to get the script via git method

In a Terminal run `git clone https://github.com/xmetalfanx/linuxscripts.git && cd linuxscripts`

## How to run the main script file

1. Open a Terminal
2. Navigate to the root folder you extracted the LinuxScripts archive to
3. type `bash linuxSetupScripts.sh`

## Goals

1. To have scripts I can run on various distros that automate many of the post install "out of the box" tasks that I always perform anyway.

- Distro families to be included are

          - Arch
          - Debian
          - Fedora
          - OpenSuse
          - Solus
          - Ubuntu

---

## [Xmetal's Task Info](/documentation/xmetalTasks.md)

- This is where the original idea for all of this came from ... These are "for me" where instead of "going to this menu and selecting this, and that menu and selecting another thing, I can just run this one "batch" set of tasks and do it all at once.

---

## Test Results

- Please note that I do not run all versions of all distros, so in some cases, (example) OpenSuse 15.0 Leap may say "fail" for that task, but OpenSuse Tumbleweed says "Pass" and I may have fixed the issue for Leap too ... but If i don't see it pass on an actual install, I will leave what I saw with my own eyes

## Distro Testing

- [Arch Based Task](tests/archBasedTests.md)
- [RPM Based Distro - Fedora and OpenSuse](tests/rpmBasedTests.md)
- [Solus Task](tests/solusTests.md)
- [Ubuntu Task](test/ubuntuBasedTests.md)

## Software Tests

- [Theming Testing](tests/themingTests.md)
- [Web Browser Installer Tests](tests/browserImstallerTests.md)

### Extra Notes

- note: move this to better documentation section, later The repo used for an option to install Audio-Recorder on Debian is <https://www.deb-multimedia.org/>
