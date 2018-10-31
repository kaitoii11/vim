#!/bin/sh

install_vimrc() {
  [ -e "$HOME/.vim" ] && echo "$HOME/.vim already exist" && exit
  [ -e "$HOME/.vimrc" ] && echo "$HOME/.vimrc already exist" && exit

  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
  sh ./installer.sh $HOME/.cache/dein

  MYPATH=$PWD
  cd $HOME
  mv $MYPATH $HOME/.vim
  ln -s  "$HOME/.vim/.vimrc" "$HOME/.vimrc"
}

install_vimrc
