# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
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
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket" #ssh-agent 

source ~/Downloads/powerlevel10k/powerlevel10k.zsh-theme #powerlevel10k
source ~/Downloads/zsh-autosuggestions/zsh-autosuggestions.zsh #zsh auto-suggestions
source ~/Downloads/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh #zsh syntax-highlighting

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none #remove underlines

[ -f "${XDG_CONFIG_HOME:-$HOME/.config/zsh}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config/zsh}/aliasrc" #alias rc 

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
