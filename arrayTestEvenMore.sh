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
    [16.04]="April 2021"         # 16.04
    [18.04]="April 2023"         # 18.04
    [20.04]="April 2025"          # 20.04
 )


#lsbCodeName="$(lsb_release -sc)"

## Ubuntu Testing atm
removeDQuotes='tr -d \" '

OSRELEASE_VERSIONID=$(awk -F= '/^VERSION_ID=/ { print $2 }' /etc/os-release | $removeDQuotes )
#####################################

clear


## ?? how do i determine what array to use ?
	## Before i'd use this ... is distroName known?

echo -e "currentUbuntu[$OSRELEASE_VERSIONID]"
echo


#if relealsbCodeNameseIAmOn is in the array
if [[ -v "currentUbuntu[$OSRELEASE_VERSIONID]" ]]; then

	EOL=${currentUbuntu[$OSRELEASE_VERSIONID]}

    echo "You are on a current release of Ubuntu"
    echo
    echo -e "The end of life/support for your release is: $EOL"

else
    echo "You are NOT on a current release of Ubuntu"
fi
