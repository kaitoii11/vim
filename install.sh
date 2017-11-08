#!/bin/sh

install_vimrc() {
  [ -e "$HOME/.vim" ] && echo "$HOME/.vim already exist" && exit
  [ -e "$HOME/.vimrc" ] && echo "$HOME/.vimrc already exist" && exit

  git submodule init
  git submodule update

  MYPATH=$PWD
  cd $HOME
  mv $MYPATH $HOME/.vim
  ln -s  "$HOME/.vim/.vimrc" "$HOME/.vimrc"
}

install_vimrc
