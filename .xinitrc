#!/bin/sh

# Enable tap to click on touchpad (device id:12 tapping prop: 312)
xinput set-prop 12 340 1
# Enable natural scrollig (device id:12 natural Scrolling prop:320)
xinput set-prop 12 348 1

# Start sxhkd
sxhkd &


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



