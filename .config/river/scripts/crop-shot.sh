#!/bin/sh

IMG=~/.screenshots/$(date +%Y-%m-%d_%H-%m-%s).png && grim -t png -g "$(slurp)" $IMG && wl-copy < $IMG
