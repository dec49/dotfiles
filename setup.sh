#!/bin/bash

DOT_FILES=(.zshrc .zhistory .cache .emacs.d .ipython .spacemacs .config .gdbinit .latexmkrc .ssh)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
