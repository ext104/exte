#!/bin/bash

# include vars
source ~/exte/etc/exte.conf

if [[ -s $PATH_PATH_ETC/gitpath ]]
then
  git -C $EXTE_PATH pull $GIT_PATH
fi

shopt -s autocd

if [ -f /etc/bash_completion ]; then
    source /etc/bash_completion
fi

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

alias p='pwd'
alias v='vim'

alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

# other
su() { if [[ $@ == "-" ]]; then command su "$@"; else command su -m "$@"; fi; }
alias home='echo $HOME'
alias mysql="mysql --prompt=\"`hostname` \c \d> \""
docker() { if [[ $@ == "ps" || $@ == "ps -a" ]]; then command docker "$@" -s --format '\nContainer\t{{.Names}}[{{.ID}}]\nImage\t\t{{.Image}}\nStatus\t\t{{.Status}}\nSize\t\t{{.Size}}\nPorts\t\t{{.Ports}}'; else command docker "$@"; fi; }

# exte
alias exte="source exte"
alias psx="source psx"
#alias esend='ssh root@dvornikov0.sd.itmh.ru -C "/root/./extesender.py \"`hostname` command completed\""'

function skip(){
        for((i=0;$i<$1;i++))
        do
                echo -e "\n"
        done
}

# include local script
if [[ -f "$EXTE_PATH_LOCAL/`hostname`.sh" ]]
then
    source $EXTE_PATH_LOCAL/`hostname`.sh
fi

psx run
