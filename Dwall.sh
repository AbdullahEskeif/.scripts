#!/bin/bash

#kill the script if it's already running useful if you're constantly restarting x
for pid in $(pidof -x Dwall.sh); do
     if [ $pid != $$ ]; then
         kill -9 $pid
         exit 1
     fi
done

#Enter the wallpaper directory
cd "$HOME/Wallpaper/nord/"

#Get the names of all the pics in the directory
wallpapers=($(ls))

#get the absolute paths of the pics
for pic in "${wallpapers[@]}"
 do
 :
 wallpath+=($(readlink -f $pic))
done

while true; do

 for p in "${wallpath[@]}"
  do
  :
  feh --bg-fill $p 
  sleep 60s
 done

done
