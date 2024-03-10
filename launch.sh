#!/usr/bin/env bash

# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

# Launch Default Bar
# polybar example 2>&1 | tee -a /tmp/polybar1.log & disown

# monitor_list=$(polybar --list-monitors | awk -F: '{print $1}')
monitor_list="DP-2 HDMI-0"

for m in $monitor_list; do
    MONITOR=$m polybar --reload mybar &
    sleep 1 # to make sure sys tray is displayed on the first bar
done

echo "Bars launched..."
