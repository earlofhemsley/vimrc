#!/bin/sh
set -e

cd ~/.vim_runtime
cat ~/.vim_runtime/vimrcs/basic.vim > ~/.vimrc
cat ~/.vim_runtime/vimrcs/ideavimrc.vim > ~/.ideavimrc
echo "Installed the Basic Vim configuration successfully! Enjoy :-)"
