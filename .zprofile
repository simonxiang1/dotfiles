# setting environmental variables
export EDITOR="nvim"
export READER="Zathura"

# run startx on login
if [[ -z $DISPLAY ]]; then
	  exec startx
fi
