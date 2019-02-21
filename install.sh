#!/usr/bin/env bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


curl -fLo ~/.local/share/xfce4/terminal/colorschemes/gruvbox-dark.theme --create-dirs \
    https://raw.githubusercontent.com/morhetz/gruvbox-contrib/master/xfce4-terminal/gruvbox-dark.theme

cp ./.vimrc ~/.vimrc
cp ./.zshrc ~/.zshrc
