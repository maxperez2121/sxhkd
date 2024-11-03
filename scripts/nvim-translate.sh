#!/usr/bin/bash

procesoclass=nvim-translate
pids=$(xdotool search --class $procesoclass)

if [ $pids ]; then
	#echo $pids
	bspc node $pids --flag hidden -f
else
	#echo "Necesita iniciar"
	kitty --class $procesoclass -e nvim vim-translate
fi
