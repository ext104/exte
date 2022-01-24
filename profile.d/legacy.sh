#!/bin/bash

# vars for PSX configure
POSTSTY=${STY/*./}
FULL=`hostname`
DOMAIN=${FULL/`hostname -s`/}
PINK='\e[1;35m' # начать красный форграунд
RED='\e[1;31m'
UND='\e[4m'     # подчеркивание
SOFF='\e[m'     # отключить стили
COLOR=$PINK     # цвет по умолчанию
INFOFIELD='\!'     # информация


case `whoami` in
    "root")
        COLOR=$RED
        ;;
esac

# info field
if [[ $POSTSTY ]]
then
    INFOFIELD="$POSTSTY:$COLOR$WINDOW$SOFF:\!"
fi

if [[ $PSNOTE ]]
then
    INFOFIELD="$PSNOTE:$INFOFIELD"
fi

if [[ $PSTIME ]]
then
    INFOFIELD='\t'" $INFOFIELD"
fi

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
BRANCH="$COLOR\$(parse_git_branch)$SOFF"
INFOFIELD="$BRANCH $INFOFIELD"

HOSTNAME="$COLOR`hostname -s`$SOFF$DOMAIN"
DIR="$UND\w$SOFF"
PROMPT="$COLOR"'\$'"$SOFF\n"

PS1="$HOSTNAME$INFOFIELD$RED$ERRFIELD $SOFF$DIR$PROMPT"
PS2="$COLOR$SOFF"
