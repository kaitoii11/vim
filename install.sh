#!/bin/sh

install_vimrc() {
  [ -e "$HOME/.vim" ] && die "$HOME/.vim already exist"
  [ -e "$HOME/.vimrc" ] && die "$HOME/.vimrc already exist"

  git submodule init
  git submodule update

  ln -s "$HOME/.vimrc" .vimrc
}

install_vimrc
