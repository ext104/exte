#!/bin/bash

# include vars
source ~/exte/etc/exte.conf

echo -e "You're \e[1;35m"`whoami`"\e[m"
echo -n 'Entry git repository path if you want to download updates: '
read extegit
echo $extegit > $EXTE_PATH_ETC/gitpath

rm -f $HOME/.vimrc $HOME/.zshrc $HOME/.bashrc
ln -s $EXTE_PATH_FILES/.vimrc $HOME/.vimrc
ln -s $EXTE_PATH_FILES/.zshrc $HOME/.zshrc
ln -s $EXTE_PATH_FILES/.bashrc $HOME/.bashrc

# run exte
source ~/.bashrc
