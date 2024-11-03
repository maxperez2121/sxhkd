#!/usr/bin/bash

procesoclass=scratchpad
pids=$(xdotool search --class $procesoclass)

if [ $pids ]; then
	#echo $pids
	bspc node $pids --flag hidden -f
else
	#echo "Necesita iniciar"
	kitty --class $procesoclass -e nvim /Datos/Aqui-esta-lo-nuevo-xd/Documentos/notes-md 
fi
