#!/bin/sh

workspace="2"

window="`wmctrl -l | awk '{print $2}' | grep "^$workspace" | sed '2,$d'`"

eval $(xprop -root -notype _NET_CURRENT_DESKTOP | sed 's, ,,g')

if [ "$_NET_CURRENT_DESKTOP" == $workspace ]
	then
		printf "%s\n" 
	else
		if [ $window == $workspace ]
			then
				printf "%s\n" 
			else
				printf "%s\n" 
			fi
	fi