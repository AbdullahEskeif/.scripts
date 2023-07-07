#!/bin/sh

bookmark="$(xclip -o)"
file="/home/Aboud/.scripts/dmenu/bookmarks"

echo "$bookmark" >> "$file"

notify-send "Bookmarked"

