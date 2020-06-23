# xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx & sleep 2

# bluetooth autoconnect
pavucontrol &

# start dwm
exec dwm


