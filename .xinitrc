#!/bin/sh
xrdb -merge ~/.Xresources

# Enable tap to click on touchpad (device id:12 tapping prop: 303)
xinput set-prop 12 303 1
# Enable natural scrollig (device id:12 natural Scrolling prop:311)
xinput set-prop 12 311 1

# Start xcompmgr
xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &

# Set background
~/.fehbg

# using dwm as widow manager
#exec dwm

while :; do
	dwm 2> ~/.dwm.log
done
