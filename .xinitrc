# xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx & sleep 2

# saves your fingers when using vim based anything
setxkbmap -option caps:escape

# works!!!!
wal -i "/home/simon/Desktop/personal/anime/wallpaper_selections"

# start dwm
exec dwm


