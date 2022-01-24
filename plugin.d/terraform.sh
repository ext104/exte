#!/bin/bash

alias lsterr='''echo -e "\e[1;35m- Configs *.tf: \e[m";ls| grep -e "tf$"| grep -v "variables";echo -e "\e[1;35m- Variables: \e[m";ls|grep variables --color=no;echo -e "\e[1;35m- States: \e[m"; ls| grep state --color=no; echo -e "\e[1;35m- Providers: \e[m"; ls providers/registry.terraform.io/terraform-provider-openstack/ --color=no'''
