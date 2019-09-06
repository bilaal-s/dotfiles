#!/bin/sh

pgrep compton && killall compton || compton --config ~/.config/compton.conf --unredir-if-possible &