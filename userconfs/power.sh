uptime=$(uptime -p | sed -e 's/up //g')

rofi_command="rofi"

lock=" Lock"
shutdown=" Power off"
reboot=" Reboot"
suspend=" Sleep"
logout=" Log out"

options="$lock\n$shutdown\n$reboot\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
			systemctl poweroff
        ;;
    $reboot)
			systemctl reboot
        ;;
    $lock)
			 ~/.config/userconfs/i3lock.sh
        ;;
    $suspend)
			systemctl suspend
        ;;
    $logout)
				i3-msg exit
        ;;
esac
