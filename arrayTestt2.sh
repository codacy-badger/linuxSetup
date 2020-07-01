#!/bin/bash

# idea: do not put beta releases or pre-releases here

## Idea: use "End of Standard Support" and not "End of Life" listed on https://wiki.ubuntu.com/Releases
typeset -A currentUbuntu=(
    [16.04]="April 2021"         # 16.04
    [18.04]="April 2023"         # 18.04
    [20.04]="April 2025"          # 20.04
 )

function prompt()
{
    echo
    read -p "Press to continue"
}

function declareVars()
{

    #lsbCodeName="$(lsb_release -sc)"

    removeDQuotes='tr -d \" '
    OSRELEASE_VERSIONID=$(awk -F= '/^VERSION_ID=/ { print $2 }' /etc/os-release | $removeDQuotes )
	#OSRELEASE_VERSIONID="12.04"

    arrayName="currentUbuntu"

	declare -n currentArray=$arrayName

	echo -e $currentArray

}

declareVars

######################################################
# for testing
#foobarVar=$OSRELEASE_VERSIONID
#foobarVar="12.04"


##################################################

for release in "${!currentUbuntu[@]}"; do
	clear
	echo -e "release: $release"
	echo -e "${!currentUbuntu[*]}"
	#echo -e  "${currentUbuntu[$release]}"

	if [ "${!currentUbuntu[$release]}" == "$OSRELEASE_VERSIONID" ]; then
		echo -e "pass"
	else
		echo -e "Fail"

	fi
done