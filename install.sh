#!/bin/bash

programaNom=''
programaExec=''
comprobarPrograma(){
	comprobar=$(which $programaExec)
	
	if [ $comprobar ]; then
		echo "$programaNom		----> Instalado en $comprobar"
	else
		echo "Se necesita instalar $programaNom"
		sudo apt install $programaNom
	fi
}

#----------------- xdotool ------------------
programaNom=xdotool
programaExec=xdotool
comprobarPrograma

#-----------------  flameshot------------------
programaNom=flameshot
programaExec=flameshot
comprobarPrograma

#-----------------  kitty------------------
programaNom=kitty
programaExec=kitty
comprobarPrograma

#-----------------  tmux------------------
programaNom=tmux
programaExec=tmux
comprobarPrograma

#-----------------  rofi------------------
programaNom=rofi
programaExec=rofi
comprobarPrograma

#-----------------  calcurse------------------
programaNom=calcurse
programaExec=calcurse
comprobarPrograma

#-----------------  cmus------------------
programaNom=cmus
programaExec=cmus
comprobarPrograma

