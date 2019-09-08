#!/bin/sh
betterlockscreen -u $(cat ~/.fehbg | awk 'NR==2 {print $3}' | tr -d \')