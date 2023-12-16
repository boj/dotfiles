#!/bin/sh

case $1 in
    crop)
        grim -t png -g "$(slurp)" - | wl-copy -t image/png
        ;;
    full)
        IMG=~/.screenshots/$(date +%Y-%m-%d_%H-%m-%s).png && grim -o $2 $IMG && wl-copy < $IMG
        ;;
esac
