[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx & sleep 2
feh --bg-scale --randomize ~/Desktop/personal/anime/wallpaper_selections/* &
exec dwm
