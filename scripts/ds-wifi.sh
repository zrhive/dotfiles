#!/usr/bin/env sh

cmd="ip addr; read -p 'Press Enter to exit...'"

case $BUTTON in
    1) notify-send "" ;;
    3) kitty -e bash -c "$cmd" ;;
esac

