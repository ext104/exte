#!/bin/bash

# include vars
source ~/exte/etc/exte.conf

# Complitions
if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

# Autocd
shopt -s autocd

# cd
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

# colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls aliases
alias ll='ls -AlF'
alias la='ls -AF'
alias l='ls -CF'
alias lc='ls | cat'

# other
alias home='echo $HOME'
alias mysql="mysql --prompt=\"`hostname` \c \d> \""

alias p='pwd'
alias v='vim'

# exte
alias exte="source exte"
alias psx="source psx"

function skip(){
        for((i=0;$i<$1;i++))
        do
                echo -e "\n"
        done
}

su() { if [[ $@ == "-" ]]; then command su "$@"; else command su -m "$@"; fi; }
