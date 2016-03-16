# Prompts
PS1=$'%{\e[1;32m%}[%n:%{\e[0m\e[0;36m%}%~%{\e[0m\e[1;32m%}]%{\e[0m\e[0;31m%}$%{\e[0m%} '
RPS1=$'%{\e[4;35m%}%*%{\e[0m%}'

# ls colors
CLICOLORS=1
eval `gdircolors ~/.dir_colors` # OSX-specific

# Variables
EDITOR='vi'
GIT_EDITOR='vi'
REPORTTIME=10

# Vim
alias vi='vim'
alias v='vim'

# Tab completion
autoload -Uz compinit && compinit -i
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2
setopt completeinword
autoload select-word-style
select-word-style shell

# History
autoload -U history-search-end
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt sharehistory
bindkey -v
bindkey '^R' history-incremental-pattern-search-backward
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '\e[A' history-beginning-search-backward-end
bindkey '\e[B' history-beginning-search-forward-end

# Directory stack
setopt pushdsilent
setopt autopushd
setopt pushdminus

# Better globbing
setopt extendedglob
unsetopt caseglob

# Type '# comment' to add comment to end of command
setopt interactivecomments

# Helpful aliases
alias ls='gls --color -FGh'
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color'
alias lc='find . | xargs wc -l'
alias clear='printf "\e]50;ClearScrollback\a"'
alias py='python'
alias gpp='g++'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

function chpwd() {
    emulate -L zsh
    ls
}
