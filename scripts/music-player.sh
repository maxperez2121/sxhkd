#!/usr/bin/bash

procesoclass=music-player
pids=$(xdotool search --class $procesoclass)

if [ $pids ]; then
	#echo $pids
	bspc node $pids --flag hidden -f
else
	#echo "Necesita iniciar"
	#kitty --class $procesoclass -e ncmpcpp
	kitty --class $procesoclass -e cmus
fi
