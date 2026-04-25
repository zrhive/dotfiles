#!/usr/bin/env sh

wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | awk '{if ($3) print $3; else printf "%.0f%%", $2*100}' | xargs -I {} notify-send 'Volume: {}'
