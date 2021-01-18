#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls --color=auto'
alias ..='cd ..'
alias gs='git status'
alias gd='git diff'
alias gc='git checkout'

alias gl='git log'
alias gb='git branch'
alias cx='chmod +x'
alias grep='grep --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '

unset PROMPT_COMMAND # to override what the fascists forced us to see

test -s "$HOME/.git-prompt.sh" && source $HOME/.git-prompt.sh || true
export PS1='\[\e]0;\w\a\]\n\[\e[94m\]\u@arch \[\e[33m\]\w\[\e[0m $(__git_ps1 "(%s)")\]\n\$ '

unset color_prompt force_color_prompt

set completion-ignore-case On

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

export PATH=/home/cjunior/.local/bin:$PATH

source "$HOME/.cargo/env"
