[[ -f ~/.bashrc ]] && . ~/.bashrc

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

if [[ ! $DISPLAY && $XDG_VTNR -le 3 ]]; then
	startx
fi
