#!/bin/bash

# Include variables
source ~/exte/etc/exte.conf

# Update
if [[ -s ${extefs['etc']}/gitpath ]]
then
  git -C ${extefs['root']} pull $GIT_PATH
fi

# Include configs
if [[ -f "${extefs['local']}/`hostname`.sh" ]]
then
    source ${extefs['local']}/`hostname`.sh
else
    source "${extefs['local']}/localhost.sh"
fi

psx run
