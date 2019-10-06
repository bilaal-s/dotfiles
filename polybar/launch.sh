#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Check if we need to launch both bars or just one
connected=$(xrandr | ag '\ connected' | wc -l)
if [ $connected == 2 ]
then
    polybar main &
    polybar secondary &
else
    polybar main &
fi

echo "Bar(s) launched..."
