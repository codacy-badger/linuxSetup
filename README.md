[![Codacy Badge](https://api.codacy.com/project/badge/Grade/ad3a390ed44e4ad28b786d760b2dd5f6)](https://www.codacy.com/app/Xmetalfanx/linuxSetup?utm_source=github.com&utm_medium=referral&utm_content=Xmetalfanx/linuxSetup&utm_campaign=Badge_Grade)

# NOTE: THIS is under heavy construction

- Things are broken and I know it.

# Xmetal's Linux Scripts

## Introduction

A problem SOME users, even if they are experienced have when setting up some distributions, is all the post install tasks they have to do to setup a "workable" system. The tasks may not be difficult to do, but just rather they are time consuming. These scripts can hopefully give people a "helping hand" getting different distro bases set up.

While The main distributions listed are meant to be "Distro family bases", not ALL scripts are practically on all distros. For example a few of the "Fedora scripts" are already pre-done for you, if you use Korora.

## Disclaimer

- Standard Disclaimer about how I am not responsible about what scripts you run on your own computer or what mistakes may occur

## Thanks

- Too many to list them all
- While I was likely to do this anyway, it is people like [Midfngr](https://www.youtube.com/user/midfingr/undefined) that inspire me to help other, though this entire idea started with no menus, and just a way for ME TO AUTOMATE some post distro install tasks, the idea this could help others is why it has grown so much

- Thanks to [Matthew Moore](https://www.youtube.com/user/MrGizmo757/undefined) for much of the Arch info in his Arch install notes.

## Known issues

[Cinnamon is installing on fresh copies of OpenSUSE Leap but while they install, they do not always run properly](https://github.com/Xmetalfanx/linuxSetup/issues/67)

It also seems like Cinnamon devs are MIA in OpenSUSE at the time I am typing this... even Tumbleweed hasn't been updated OFFICIALLY since about September 2018


## Links to other useful projects similar to this

### [Mr Sam Hewitt's Main Page and Scripts](https://github.com/snwh)

- [Fedora Post Install Scripts](https://github.com/snwh/fedora-post-install)
- [Solus Post Install Scripts](https://github.com/snwh/solus-post-install)
- [Ubuntu Post Install Scripts](https://github.com/snwh/ubuntu-post-install)

Thank you to Mr. Hewitt for some code ideas, when browsing through his projects

- Also thanks to [Fedora Install Script](https://gist.github.com/KingsleyOmon-Edo/711c0a79c29d532840bb5cae55b7c2d6) for ideas coming in future commits (posted this here to remember to give credit, before hand)

- More thanks go to KittyKatt and screenfetch's contributors [Screenfetch on Github](https://github.com/KittyKatt/screenFetch)

--------------------------------------------------------------------------------

## How to download via git

- ### In Arch:

  `sudo pacman -S git`

- ### In Fedora:

  `sudo dnf install git`

- ### In OpenSUSE:

  `sudo zypper install git`

- ### In Ubuntu:

  `sudo apt install git`

  - if that doesn't work `sudo apt-get install git`

## How to get the script via git method

In a Terminal run `git clone https://github.com/xmetalfanx/linuxscripts.git && cd linuxscripts`

## How to run the main script file

1. Open a Terminal
2. Navigate to the root folder you extracted the LinuxScripts archive to
3. type `bash xmetalLinuxScripts.sh`

--------------------------------------------------------------------------------

## Goals

1. To have scripts I can run on various distros that automate many of the post install "out of the box" tasks that I always perform anyway.

  - Distro families to be included are

    - Ubuntu
    - OpenSuse
    - Arch
    - Fedora


    - Debian note: I have no added any code related to debian and if these scripts work (at the MOMENT) on Debian, that is because it detects "apt" and think's you are on Ubuntu's base .... DEBIAN SUPPORT IS 100% planned... right now I want to be sure to have what I already have now working correctly (I dont want to "bite off more than i can chew"), first.
---

## [Xmetal's Task Info](/documentation/xmetalTasks.md)

---

# Test Results 

## Distro Testing 
- [Arch Based Task ](tests/archBasedTests.md)
- [RPM Based Distro  - Fedora and OpenSuse ](tests/rpmBasedTests.md)
- [Solus Task ](tests/solusTests.md)
- [Ubuntu Task Testing](test/ubuntuBasedTests.md)

## Software Tests
- [Theming Testing ](tests/themingTests.md)
- [Web Browser Installer Tests](tests/browserImstallerTests.md)