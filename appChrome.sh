#!/bin/bash

##############################################################################################
# I hate space that is not used efficiently.
# Using Chrome's app mode or also called kiosk mode. I can use my whole screen real estate to
# watch videos, read documents or do leasure browsing, without the unused toolbars or tabs.
# This could be for you or could not be, but it's mine and for I love it.
# Works very well along i3 or bspwm
#
# I use this in conjuction with i3 config file to have a shortcut
# REQUIRES xclip
##############################################################################################

#stores clipboard into url
url=$(xclip -o)

#Checks if it is a youtube video, and embeds it. 
#If you don't want this feature, feel free you use the following
#
# exec /usr/bin/google-chrome --app="$url"
#
#only and comment out the if statment below

if [[ $url == *"youtube.com"* ]]; then
#https://www.youtube.com/ watch?v=XbGs_qK2PQA
#                      23 24

	youtubeURL=${url:0:23}"/embed/"${url:32:${#url}}
	exec /usr/bin/google-chrome --app="$youtubeURL"
else
	exec /usr/bin/google-chrome --app="$url"
fi


