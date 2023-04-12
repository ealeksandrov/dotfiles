#!/usr/bin/env bash

echo "symlinking dotfiles..."
ln -sF $(pwd)/configs/zshrc ~/.zshrc
ln -sF $(pwd)/configs/alacritty.yml ~/.alacritty.yml

ln -sF $(pwd)/configs/gitattributes ~/.gitattributes
ln -sF $(pwd)/configs/gitconfig ~/.gitconfig
ln -sF $(pwd)/configs/gitignore-global ~/.gitignore-global

ln -sF $(pwd)/configs/finicky.js ~/.finicky.js
ln -sF $(pwd)/configs/gemrc ~/.gemrc
ln -sF $(pwd)/configs/lldbinit ~/.lldbinit

mkdir ~/.vim
ln -sF $(pwd)/configs/vimrc ~/.vim/vimrc

touch ~/.hushlogin

exec zsh

echo "✓ done"
