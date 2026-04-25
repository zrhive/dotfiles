#! /usr/bin/env sh

echoco

cmd="ip addr; read -p 'Press Enter to exit...'"

case $BUTTON in
    1) notify-send "" ;;
    3) $TERMINAL -e bash -c "$cmd" ;;
esac

