#!/usr/bin/env sh

vol_perc=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%.0f%%\n", $2 * 100}')

case "$BUTTON" in
    1) notify-send "Percentage: $vol_perc" ;;
esac
