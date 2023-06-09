#!/bin/sh

# https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts/popup-powermenu

case "$1" in
    --popup)
        yad=$(yad --width 300 --entry --undecorated --title "System Logout" --image=gnome-shutdown --text "Choose action:" --entry-text "Suspend" "Shutdown" "Reboot" "Logout")

        case "$yad" in
            Shutdown)
                systemctl poweroff
                ;;
            Reboot)
                systemctl reboot
                ;;
            Suspend)
                systemctl suspend 
                ;;
            Logout)
                bspc quit
                ;;
        esac
        ;;
    *)
        echo " "
        ;;
esac
