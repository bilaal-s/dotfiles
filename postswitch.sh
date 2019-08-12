#!/bin/bash
# autorandr outputs to stderr :/
laptop=$(autorandr 2>&1 >/dev/null | grep -oP 'laptop \(detected\) \(current\)')

if [ -n "$laptop" ]
then 
    i3-msg 
fi
