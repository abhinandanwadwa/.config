#!/bin/bash

options="󰗼  Lock
󰜉  Logout
󰜈  Reboot
  Shutdown"

choice=$(echo -e "$options" | rofi -dmenu -theme purple -p "Power Menu")

case "$choice" in
  *Lock*) betterlockscreen -l ;;
  *Logout*) pkill -KILL -u $USER ;;
  *Reboot*) systemctl reboot ;;
  *Shutdown*) systemctl poweroff ;;
esac
