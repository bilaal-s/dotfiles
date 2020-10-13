#!/bin/sh

killall -q picom
sleep 0.5
picom --config ~/.config/compton.conf --unredir-if-possible &
