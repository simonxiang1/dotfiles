# setting environmental variables
export EDITOR="nvim"
export READER="zathura"

# run startx on login
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi
