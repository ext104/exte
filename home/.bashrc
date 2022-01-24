#!/bin/bash

# Include variables
source ~/exte/etc/exte.conf

# Update
if [[ ! -s ${extefs['etc']}/gitpath ]]
then
  git -C ${extefs['root']} pull $GIT_PATH
fi

# Include plugins
source ${extefs['plugin']}/default.sh
source ${extefs['plugin']}/docker.sh
source ${extefs['plugin']}/ansible.sh
source ${extefs['plugin']}/terraform.sh

# Include local script
if [[ -f "${extefs['local']}/`hostname`.sh" ]]
then
    source ${extefs['local']}/`hostname`.sh
fi

psx run
