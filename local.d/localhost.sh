#!/bin/bash

# Include variables
source ~/exte/etc/exte.conf

# Include plugins
source ${extefs['plugin']}/default.sh
source ${extefs['plugin']}/docker.sh
source ${extefs['plugin']}/ansible.sh
source ${extefs['plugin']}/terraform.sh
