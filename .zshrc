autoload -Uz compinit promptinit colors
colors
compinit
promptinit
prompt walters

[[ ! -f ~/.z_hist ]] && touch .z_hist

HISTFILE=~/.z_hist
HISTSIZE=1000
SAVEHIST=1000

setopt CORRECT
export SPROMPT="Corriger $fg[red]%R$reset_color par $fg[green]%r$reset_color ? [Yes, No, Abort, Edit] "

CASE_SENSITIVE="false"

bindkey -v

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors


alias ls='ls --color=auto --group-directories-first'
alias ll="ls -l"
alias la="ls -a"
alias l="ls -lah"

alias sZ="source ~/.zshrc"
alias eZ="vim ~/.zshrc"
alias eI="vim ~/.config/i3/config"

alias h='history'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
