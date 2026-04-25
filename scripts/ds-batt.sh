#!/usr/bin/env sh

# batt_perc=$(upower -b | awk '/percentage/ { gsub(/%/, ""); print $2 }')
batt_perc=$(upower -b | awk '/percentage/ { print $2 }')

case $BUTTON in
    1) notify-send "Battery percentage: $batt_perc" ;;
    3) kitty -e bash -c "upower -d | less" ;;
esac
