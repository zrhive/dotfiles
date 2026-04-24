#!/usr/bin/env sh

vol_perc=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%.0f%% ", $2 * 100; print $3}')

case $BUTTON in
    1) notify-send "$vol_perc" ;;
esac
