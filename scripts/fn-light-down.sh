#!/usr/bin/env sh

light -N 5 && light -U 5
light -G | awk '{printf "%.0f%%", int($1)}' | xargs -I {} notify-send 'Brightness: {}'
