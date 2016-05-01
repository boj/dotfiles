#!/bin/bash
maildirs="$HOME/.mail/*/INBOX/new/"
find $maildirs -type f | wc -l | xargs
