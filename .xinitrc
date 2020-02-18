#!/bin/sh
xrdb -merge ~/.Xresources

# Enable tap to click on touchpad (device id:12 tapping prop: 306)
xinput set-prop 12 309 1
# Enable natural scrollig (device id:12 natural Scrolling prop:314)
xinput set-prop 12 317 1

# Start xcompmgr
xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &

# Set background
~/.fehbg

# Start sxhkd
sxhkd &

# using dwm as widow manager
#exec dwm

while true; do
	while true; do
		LOCALTIME=$( date )
		MEM=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')
    	NET=$(nmcli -t -f active,ssid dev wifi | egrep '^yes' | cut -d : -f2)
		BAT="Bat:$(cat /sys/class/power_supply/BAT0/capacity) Status:$(cat /sys/class/power_supply/BAT0/status)"
    	xsetroot -name "| $LOCALTIME | Mem:$MEM | Net: $NET | $BAT |"

   		sleep 10s
	done &
	dwm 2> ~/.dwm.log
done



