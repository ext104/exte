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

# error field
if [[ $ISGIT ]]
then
    ERRFIELD="$RED$ISGIT$SOFF"
fi

if [[ $ISPULL ]]
then
    ERRFIELD="$RED$ISPULL$SOFF"
fi

if [[ $ERRFIELD ]]
then
    MIDDLE="$INFOFIELD $ERRFIELD"
else
    MIDDLE=$INFOFIELD
fi

HOSTNAME="$COLOR`hostname -s`$SOFF$DOMAIN"
PROMPT="$COLOR"'\$'"$SOFF\n"

vats_dir(){
    VATSDIR=`pwd | grep '/itmh/programs/asterisk/conf/vats/' 2> /dev/null | sed -e 's|/itmh/programs/asterisk/conf/vats/||g'`
    if [[ $VATSDIR ]]
    then
        echo -e "$UND\$(vats_dir)$SOFF"
    else
        echo -e "$UND\w$SOFF"
    fi
}

DIR="\$(vats_dir)"

PS1="$HOSTNAME$MIDDLE $DIR$PROMPT"
PS2="$COLOR>$SOFF"
