#!/bin/bash

# include vars
source ~/exte/etc/exte.conf

echo -en "You're \e[1;35m"`whoami`"\e[m\n"'Entry git repository path if you want to download updates: '
read extegit
echo $extegit > ${extefs['etc']}/gitpath

rm -f $HOME/.vimrc $HOME/.zshrc $HOME/.bashrc

ln -s ${extefs['home']}/.vimrc  $HOME/.vimrc
ln -s ${extefs['home']}/.zshrc  $HOME/.zshrc
ln -s ${extefs['home']}/.bashrc $HOME/.bashrc

# run exte
source ~/.bashrc
