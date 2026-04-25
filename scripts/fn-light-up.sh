#!/usr/bin/env sh

light -A 5
light -G | awk '{printf "%.0f%%", int($1)}' | xargs -I {} notify-send 'Brightness: {}'
