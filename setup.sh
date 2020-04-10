#!/usr/bin/env bash

if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
else
  ln -s ~/dotfiles/gitconfig ~/.gitconfig
  ln -s ~/dotfiles/gitignore ~/.gitignore
  git submodule update --init --recursive
fi

if ! [ -x "$(command -v vim)" ]; then
  echo 'Error: vim is not installed.' >&2
  exit 1
else
  ln -s ~/dotfiles/vimrc ~/.vimrc
  ln -s ~/dotfiles/vim ~/.vim
  vim +PlugInstall +qa
fi

if ! [ -x "$(command -v tmux)" ]; then
  echo 'Warning: tmux is not installed.' >&1
else
  ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
  ln -s ~/dotfiles/tmux ~/.tmux
fi

if ! [ -x "$(command -v zsh)" ]; then
  echo 'Warning: zsh is not installed.' >&1
else
  ln -s ~/dotfiles/zshrc ~/.zshrc
fi

