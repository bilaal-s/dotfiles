#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Check if we need to launch both bars or just one
docked=$(xrandr | grep -oP 'DP-3 connected primary')
if [ -n "$docked" ]
then
    export PB_HEIGHT=24
    polybar main &
    polybar secondary &
else
    echo "polybar.height: 24" | xrdb -merge 
    polybar main &
fi

echo "Bar(s) launched..."
