# Custom ZSH config by chrisying@

# Git branch information (https://github.com/olivierverdier/zsh-git-prompt)
GIT_PROMPT_EXECUTABLE='haskell'
source ~/.zsh/zsh-git-prompt/zshrc.sh

# Prompts
PS1=$'%{\e[1;32m%}[%n%{\e[1;34m%}@%{\e[1;32m%}%m:%{\e[0m\e[0;36m%}%~%{\e[0m\e[1;32m%}]%{\e[0m\e[0;31m%}$%{\e[0m%} '
RPS1=$'$(git_super_status) %{\e[4;35m%}%*%{\e[0m%}'

# ls colors
CLICOLORS=1
#eval `gdircolors ~/.dircolors` # macOS
eval `dircolors ~/.dircolors` # Linux

# Variables
EDITOR='vim'
GIT_EDITOR='vim'
REPORTTIME=10

# Vim
alias vi='vim'
alias v='vim'
TERM=xterm-256color  # Fix Vim background color issue

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
#bindkey '\e[A' history-beginning-search-backward-end
#bindkey '\e[B' history-beginning-search-forward-end
bindkey '^[OA' history-beginning-search-backward-end
bindkey '^[OB' history-beginning-search-forward-end

# Directory stack
setopt pushdsilent
setopt autopushd
setopt pushdminus

# Better globbing
setopt extendedglob
unsetopt caseglob
setopt NO_NOMATCH

# Type '# comment' to add comment to end of command
setopt interactivecomments

# Helpful aliases
alias ls='ls --color -FGh'
alias ll='ls -l'
alias la='ls -a'
alias grep='grep --color'
alias lc='find . | xargs wc -l'
#alias clear='printf "\e]50;ClearScrollback\a"'	# macOS
alias py='python'
alias gpp='g++'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'
alias tma='tmux a'
alias opn='xdg-open'    # Ubuntu
alias pbcopy='xclip -selection clipboard'   # Linux
alias gpoh='git push origin HEAD'

# ls after every cd (timeout 1s)
function chpwd() {
    emulate -L zsh
    timeout 1 ls --color -FGh
}

# Command not found
source /etc/zsh_command_not_found

# Set caps-lock -> escape
setxkbmap -option caps:escape   # Ubuntu

# Custom paths
