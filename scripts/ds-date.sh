#!/usr/bin/env sh

date_current=$(date now | format date '%Y-%m-%d %H:%M:%S')

case $BUTTON in
    1) notify-send "$date_current" ;;
esac
