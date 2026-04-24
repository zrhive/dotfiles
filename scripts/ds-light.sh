#! /usr/bin/env sh

light_perc=$(light -G | awk '{printf "%.0f%%", int($1)}')

case $BUTTON in
    1) notify-send "Brightness: $light_perc"
esac
