#/bin/bash

#####################################################################################
#                                                                                   #
#    ______     __  __     ______   ______     ______     __  __     __   __        #
#   /\  __ \   /\ \/\ \   /\__  _\ /\  __ \   /\  == \   /\ \/\ \   /\ "-.\ \       #
#   \ \  __ \  \ \ \_\ \  \/_/\ \/ \ \ \/\ \  \ \  __<   \ \ \_\ \  \ \ \-.  \      #
#    \ \_\ \_\  \ \_____\    \ \_\  \ \_____\  \ \_\ \_\  \ \_____\  \ \_\\"\_\     #
#     \/_/\/_/   \/_____/     \/_/   \/_____/   \/_/ /_/   \/_____/   \/_/ \/_/     #
#                                                                                   #
#       Contains cool stuff running at i3wm start up    |   by valeowoia            #
#                                                                                   #
#####################################################################################                                                                            


#       Setting wallpaper (.jpg and .png are allowed)
feh --bg-fill ~/.config/wall1.jpg &

#       Setting picom as composer to create transparent windows
picom &

#       Launching "Activate Arch Linux custom bottom badge"
activate-linux -t "Activate Arch Linux" -m "Go to Settings to activate Arch Linux" &

#       Setting auto screen lock after computer sleep
xss-lock --transfer-sleep-lock -- sh ~/.config/userconfs/i3lock.sh  &

#       Starting up pre-configured polybar with tray and nm-applet in it
polybar main --config=~/.config/polybar/config.ini | nm-applet &

#       Fixing polybar modules
#       
#       DON'T REMOVE THIS. It's a fix for volume bar and laggy black tray
sleep 2 
killall nm-applet
killall polybar
sleep 0.5
polybar main --config=~/.config/polybar/config.ini | nm-applet &

#       Starting bluetooth in tray
sleep 2.5
blueman-applet

#	Adding Ru keyboard layout
setxkbmap -model pc104 -layout us,ru -option grp:alt_shift_toggle &

#    end autorun script
wait
