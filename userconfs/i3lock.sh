#!/bin/bash

############################################################
#                                                          #
#       ██╗██████╗ ██╗      ██████╗  ██████╗██╗  ██╗       #
#       ██║╚════██╗██║     ██╔═══██╗██╔════╝██║ ██╔╝       #
#       ██║ █████╔╝██║     ██║   ██║██║     █████╔╝        #
#       ██║ ╚═══██╗██║     ██║   ██║██║     ██╔═██╗        #
#       ██║██████╔╝███████╗╚██████╔╝╚██████╗██║  ██╗       #
#       ╚═╝╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝       #                                  
#                                                          #
#       Contains i3lock configuration (used everywhere)    #
#                   ofc made by valeowoia                  #
#                                                          #
############################################################


#       If you want to change Lockscreen wallpaper, change path to it after -i tag in line below
#       It must be PNG image in your screen resolution (+- 15%)
#       Otherwise, you will have VERY BAD upscaled lockscreen image

i3lock --ignore-empty-password --show-failed-attempts --nofork -i ~/.config/lock1.png