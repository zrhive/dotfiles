#! /usr/bin/env sh

case $BUTTON in
    1) notify-send "$(upower -b | awk '/percentage/ { gsub(/%/, ""); print $2 }')"
    3) kitty -e upower -d
esac
