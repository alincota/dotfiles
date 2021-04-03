#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set up VIM
mkdir -p ~/.vim/{backups,swaps,undo,colors}
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Create symlinks
ln -svf "$DOTFILES_DIR/.bash_aliases" ~/.bash_aliases
ln -svf "$DOTFILES_DIR/.bash_prompt" ~/.bash_prompt
ln -svf "$DOTFILES_DIR/.bash_profile" ~/.bash_profile
ln -svf "$DOTFILES_DIR/.functions" ~/.functions
ln -svf "$DOTFILES_DIR/.vimrc" ~/.vimrc
ln -svf "$DOTFILES_DIR/.gitconfig" ~/.gitconfig

if ! [ -x "$(command -v git)" ]; then
    return 1;
fi

# todo: git clone just the plugin from https://github.com/crusoexia/vim-monokai
