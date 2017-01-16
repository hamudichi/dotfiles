#!/bin/bash

##############################################################################################
# I hate space that is not used efficiently.
# Using Chrome's app mode or also called kiosk mode. I can use my whole screen real estate to
# watch videos, read documents or do leasure browsing, without the unused toolbars or tabs.
# This could be for you or could not be, but it's mine and for I love it.
# Works very well along i3 or bspwm
#
# REQUIRES xclip
##############################################################################################
#stores clipboard into url
url=$(xclip -o)

#uses url to open chrome (or whichever browser you prefer) in app mode.
exec /usr/bin/google-chrome --app="$url2"
