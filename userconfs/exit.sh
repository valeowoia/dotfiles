rofi_command="rofi -theme "~/.config/userconfs/exit.rasi""

y="Yes, close i3"
n="No, go back"

options="$y\n$n"

chosen="$(echo -e "$options" | $rofi_command -p "You pressed i3 exit combination. Are you sure?" -dmenu -selected-row 0)"
case $chosen in
    $y)
			i3-msg exit
        ;;
    $n)
			killall rofi
        ;;
esac
