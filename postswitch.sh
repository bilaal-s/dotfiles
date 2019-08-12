#!/bin/bash
# autorandr outputs to stderr :/
#laptop=$(autorandr 2>&1 >/dev/null | grep -oP 'laptop \(detected\) \(current\)')

# Current using direct detection of external display via xrandr, this changes when monitor setup changes.
laptop=$(xrandr | grep -oP 'DP-3 connected primary')

if [ -n "$laptop" ]
then 
    #i3-msg 
    echo "connected!"
else 
    echo "not connected!"
fi
