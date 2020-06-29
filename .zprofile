# setting environmental variables
export EDITOR="nvim"
export READER="zathura"

# run startx on login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	  exec startx
fi
