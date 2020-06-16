# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/simon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#aliases
alias yta="noglob youtube-dl --extract-audio --audio-format mp3 -o '%(title)s.%(ext)s'"
alias youtube-dl="noglob youtube-dl"
alias lsa="ls -a"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#functions
cs() { cd "$1" && ls; }
csa() { cd "$1" && ls -a; }
