#xresources
[[ -f ~/.Xresources ]] && xrdb - merge -I$HOME ~/.Xresources

## fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitz & sleep 2

# works!!!!
wal -i "/home/simon/Desktop/personal/anime/wallpaper_selections"

# autostart mpd
mpd &

# syncthing
syncthing &

# start dwm
exec dwm
