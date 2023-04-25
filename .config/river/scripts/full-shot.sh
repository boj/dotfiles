#!/bin/sh

IMG=~/.screenshots/$(date +%Y-%m-%d_%H-%m-%s).png && grim -o $1 $IMG && wl-copy < $IMG
