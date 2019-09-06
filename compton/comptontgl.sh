#!/bin/sh

killall -q compton
sleep 0.5
compton --config ~/.config/compton.conf --unredir-if-possible &