# xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

#fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
fcitx & sleep 2

# dwm status bar show time
while true; do
   xsetroot -name "$( date +"%F %R" )"
   sleep 1m    # Update time every minute
done &

# bluetooth autoconnect
pavucontrol &

# start dwm
exec dwm


