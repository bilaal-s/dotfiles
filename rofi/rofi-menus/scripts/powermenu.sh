#!/bin/bash

rofi_command="rofi -config /home/bilaal/dev/computer-setup/rofi/rofi-menus/config.rasi -theme themes/powermenu.rasi"

### Options ###
power_off=""
reboot="ﰇ"
lock=""
suspend="⏾"
log_out=""
# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$suspend\n$log_out"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
#case $chosen in
#    $power_off)
#        systemctl poweroff
#        ;;
#    $reboot)
#        systemctl reboot
#        ;;
#    $lock)
#        light-locker-command -l
#        ;;
#    $suspend)
#        mpc -q pause
#        amixer set Master mute
#        systemctl suspend
#        ;;
#    $log_out)
#        i3-msg exit
#        ;;
#esac

