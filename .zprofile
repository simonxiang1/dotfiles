# setting environmental variables
export EDITOR="nvim"
export READER="Zathura"

# run startx on login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
