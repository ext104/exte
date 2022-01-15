#!/bin/bash
echo $PSPROFILE

# vars for PSX configure
PINK='\e[1;35m' # начать красный форграунд
RED='\e[1;31m'
SOFF='\e[m'     # отключить стили
COLOR=$PINK     # цвет по умолчанию

case `whoami` in
    "root")
        COLOR=$RED
        ;;
esac

PS1="$COLOR"'\$'" $SOFF"
PS2="$COLOR> $SOFF"
