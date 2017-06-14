#!/bin/sh

install_vimrc() {
  [ -e "~/.vim" ] && die "~/.vim already exist"
  [ -e "~/.vimrc" ] && die "~/.vimrc already exist"

  git clone git://github.com/kaitoii11/vim.git
  cd vim

  git submodule init
  git submodule update

  cd ~
  ln -s "~/.vimrc" .vimrc
}

install_vimrc
