#!/bin/sh

case $1 in
    crop)
        IMG=~/.screenshots/$(date +%Y-%m-%d_%H-%m-%s).png && grim -t png -g "$(slurp)" $IMG && wl-copy < $IMG
        ;;
    full)
        IMG=~/.screenshots/$(date +%Y-%m-%d_%H-%m-%s).png && grim -o $2 $IMG && wl-copy < $IMG
        ;;
esac
