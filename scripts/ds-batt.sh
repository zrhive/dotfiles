#! /usr/bin/env sh

# batt_perc=$(upower -b | awk '/percentage/ { gsub(/%/, ""); print $2 }')
batt_perc=$(upower -b | awk '/percentage/ { print $2 }')

case $BUTTON in
    1) notify-send "$(batt_perc)" ;;
    3) kitty -e upower -d ;;
esac
