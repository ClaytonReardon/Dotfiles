#!/bin/bash


xprop -root -spy _NET_ACTIVE_WINDOW | while read -r wid; do
    wid=$(echo $wid | cut -d ' ' -f 5)
    if [ "$wid" != "0x0" ]; then
        cls=$(xprop -id $wid WM_CLASS)
        cls=$(echo $cls | awk -F' "' '{print $3}')
        cls=$(echo $cls | tr -d '"')
        echo -e "$cls"
    else
        echo ""
    fi
done
