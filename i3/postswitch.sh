#!/bin/bash
# autorandr outputs to stderr :/
#laptop=$(autorandr 2>&1 >/dev/null | grep -oP 'laptop \(detected\) \(current\)')

# Current using direct detection of external display via xrandr, this changes when monitor setup changes.
docked=$(xrandr | grep -oP 'DP-3 connected primary')

# Workspace names, this must be in sync with ~/.config/i3/config
ws1="1: term"
ws2="2: editor"
ws3="3: browser"
ws4="4: chat"
ws5="5: monitor"
ws6="6: settings"
ws7="7: extra 1"
ws8="8: extra 2"
ws9="9: extra 3"
ws10="10: extra 4"

if [ -n "$docked" ]
then 
    i3-msg  
fi
