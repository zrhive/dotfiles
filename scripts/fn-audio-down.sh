#!/usr/bin/env sh

wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2*100}' | xargs -I {} notify-send 'Volume: {}%'
