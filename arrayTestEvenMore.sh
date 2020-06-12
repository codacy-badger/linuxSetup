#!/bin/bash

# idea: do not put beta releases or pre-releases here

# just an idea to put EOL info in here

# https://en.wikipedia.org/wiki/Fedora_version_history
declare -A currentFedora=(
    [31]="Not known"
    [32]="Not known"
    [rawhide]="Rolling"
)

# how do i handle this .. 15.1?   151? for version 15.1
# https://en.opensuse.org/Lifetime
declare -A currentOpenSUSE=(
    [15.1]="November 2020"
    [tumbleweed]="Rolling"
)

## Idea: use "End of Standard Support" and not "End of Life" listed on https://wiki.ubuntu.com/Releases
declare -A currentUbuntu=(
    [xenial]="April 2021"         # 16.04
    [bionic]="April 2023"         # 18.04
    [focal]="April 2025"          # 20.04
 )


#lsbCodeName="$(lsb_release -sc)"

## OpenSuse Testing atm

OSRELEASE_VERSION_ID="15.0"
#####################################

clear

echo -e "currentOpenSUSE[$OSRELEASE_VERSION_ID]"
echo


#if relealsbCodeNameseIAmOn is in the array
if [ -v "currentOpenSUSE[$OSRELEASE_VERSION_ID]" ]; then

	echo -e "${currentOpenSUSE[$OSRELEASE_VERSION_ID]}"
	echo
    echo "You are on a current release of openSuse"
    echo
    echo -e "The end of life/support for your release is: ${currentOpenSUSE[$OSRELEASE_VERSION_ID]}"

else
    echo "You are NOT on a current release of openSUSE"
fi
