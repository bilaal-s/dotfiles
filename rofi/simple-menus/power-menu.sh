
rofi_command="rofi -config ./config.rasi -theme ./themes/main.rasi"

### Options ###
log_out="1. Log out"
suspend="2. Sleep"
power_off="3. Shutdown"
reboot="4. Reboot"
# Variable passed to rofi
options="$log_out\n$suspend\n$power_off\n$reboot"

chosen="$(echo "$options" | $rofi_command -dmenu )"
echo $chosen
#case $chosen in
#    $power_off)
#        systemctl poweroff
#        ;;
#    $reboot)
#        systemctl reboot
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