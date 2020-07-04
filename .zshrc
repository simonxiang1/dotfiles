#    _   ___
#   / | / (_)_______
#  /  |/ / / ___/ _ \
# / /|  / / /__/  __/
#/_/ |_/_/\___/\___/

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v #vim bindings are superior
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/simon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

(cat ~/.cache/wal/sequences &) # pywal support
export PATH="/home/simon/.local/bin:$PATH" # zathura pywal

source ~/Downloads/powerlevel10k/powerlevel10k.zsh-theme #powerlevel10k
source ~/Downloads/zsh-autosuggestions/zsh-autosuggestions.zsh #zsh auto-suggestions
source ~/Downloads/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #zsh syntax-highlighting

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none #remove underlines

#aliases
alias vim="nvim" #neovim
alias yta="noglob youtube-dl --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'" #noglob for zsh links, -o for nice file names, a for audio, v for video
alias ytv="noglob youtube-dl"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' #bare git repo
alias gls="git status" #git ls
alias gcm="git commit -m"
alias gpos="git push origin master"
alias gad="git add"
alias gadall="git add -A" #git add all
alias gadupd="git add -u" #git add updated files
alias glog="git log --oneline" #will change to something better soon
alias smic="sudo make install clean"
alias lsg="ls | grep -i" #case insensitive search from output
alias lsa="ls -a" #list all
alias cp="cp -v" #verbose cp
alias mus="cs ~/Desktop/personal/music" #cs is defined later
alias vid="cs ~/Desktop/personal/videos" #but it's basically just cd -> ls
alias ut="cs ~/Desktop/academic/ut_austin"
alias tb="cs ~/Desktop/academic/textbooks"
alias help="vim ~/Desktop/personal/information/linux_setup/common_terminal_commands.txt"
alias todo="vim ~/Desktop/personal/information/linux_setup/todo_list.txt"
alias math="vim ~/Desktop/personal/useful_information/math_resources.txt"
alias bk="vim ~/Desktop/personal/useful_information/useful_links.txt"
alias blog="vim ~/Desktop/personal/useful_information/blog_posts.txt"
alias mirai="vim ~/Desktop/personal/useful_information/future_todolist.txt"
alias library="vim ~/Desktop/personal/books/books_read.txt"
alias fullbackup="sudo rsync -rvz --delete ~/ /run/media/simon/info" #makes local backup of home directory: -r for recursive, -v for verbose, -z for compression, --delete to delete files on backup not on local (mirror image)
alias newtheme="wal -i ~/Desktop/personal/anime/wallpaper_selections" #randomizes bg and sets new theme with pywal
alias newthemelight="wal -li ~/Desktop/personal/anime/light_wallpapers" #newtheme, but light mode

#functions
nord() { 
	wal --theme "base16-nord" &&
	xwallpaper --zoom "/home/simon/Desktop/personal/anime/wallpaper_selections/nord_ocean_jellyfish.png";
} #set colorscheme to nord
cs() { cd "$1" && ls; } #cd then ls
csa() { cd "$1" && ls -a; } #cd then ls -a
n () # nnn cd to directory on quit
{
	if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
		echo "nnn is already running"
		return 
	fi

	export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
	nnn "$@"

	if [ -f "$NNN_TMPFILE" ]; then
		. "$NNN_TMPFILE"
		rm -f "$NNN_TMPFILE" > /dev/null
	fi
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
