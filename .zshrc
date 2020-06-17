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
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias gc="git clone"
alias gls="git status" #git ls
alias gc="git commit"
alias gcm="git commit -m"
alias gpos="git push origin master"
alias gad="git add"
alias gadall="git add -A" #git add all
alias gadupd="git add -u" #git add updated files
alias lsl="ls | less"
alias lsg="ls | grep"
alias lsa="ls -a"

#functions
cs() { cd "$1" && ls; }
csa() { cd "$1" && ls -a; }
