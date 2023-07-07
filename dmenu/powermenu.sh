#!/bin/sh

   chosen=$(printf "  Power Off\n  Restart\n  Suspend\n  Kill\n  Lock" | dmenu -l 10) 

case "$chosen" in
	"  Power Off") pkexec shutdown -h now;;
	"  Restart") pkexec reboot ;;
	"  Suspend") pkexec zzz;;
	"  Kill") pkill dwm ;;
	"  Lock") slock ;;
	*) exit 1 ;;
esac
