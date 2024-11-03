#!/usr/bin/env bash

# Rofi CMD
rofi_cmd() {
	rofi -dmenu \
		-p "Tmux projects" \
		-theme "$HOME/.config/sxhkd/rofi/config.rasi"
}

# Rofi message
rofi_msg() {
    rofi -theme "$HOME/.config/rofiApps/config.rasi" \
        -e "$1"
}

run_rofi() {
    echo -e "$(ls $HOME/.config/smug/)" | sed "s/.yml//g" | rofi_cmd
}
runrofi=$(run_rofi 2>&1)

if mycmd; then
    error_message=$(smug start "$runrofi" 2>&1)
    if mycmd; then
        rofi_msg "se ha iniciado correctamente"
    else
        rofi_msg "$error_message"
    fi
else
    rofi_msg "$runrofi"
fi
