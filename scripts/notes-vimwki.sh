#!/usr/bin/bash

procesoclass=notes-vimwki
pids=$(xdotool search --class $procesoclass)

if [ $pids ]; then
	#echo $pids
	bspc node $pids --flag hidden -f
else
	#echo "Necesita iniciar"
	cd ~/vimwiki/ && kitty --class $procesoclass -e nvim -c VimwikiIndex
fi
