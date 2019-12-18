#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create symlinks
ln -svf "$DOTFILES_DIR/.bash_aliases" ~/.bash_aliases
ln -svf "$DOTFILES_DIR/.bash_prompt" ~/.bash_prompt
ln -svf "$DOTFILES_DIR/.bash_profile" ~/.bash_profile
ln -svf "$DOTFILES_DIR/.functions" ~/.functions
ln -svf "$DOTFILES_DIR/.vimrc" ~/.vimrc

mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undo
