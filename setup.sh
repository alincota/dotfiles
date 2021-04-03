#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Set up VIM
mkdir -p ~/.vim/{backups,swaps,undo,colors}
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Creating symlinks..."
ln -svf "$DOTFILES_DIR/.bash_aliases" ~/.bash_aliases
ln -svf "$DOTFILES_DIR/.bash_prompt" ~/.bash_prompt
ln -svf "$DOTFILES_DIR/.bash_profile" ~/.bash_profile
ln -svf "$DOTFILES_DIR/.functions" ~/.functions
ln -svf "$DOTFILES_DIR/.vimrc" ~/.vimrc
ln -svf "$DOTFILES_DIR/.gitconfig" ~/.gitconfig

if ! [ -x "$(command -v git)" ]; then
    echo "This script requires git. Please install it and then run this tool again." >&2
    return 1;
fi

echo "Downloading cheatsheets..."
if [ ! -d "${HOME}/Documents/cheatsheets/community" ]; then
    git clone https://github.com/cheat/cheatsheets.git ~/Documents/cheatsheets/community && echo "- Downloaded community contributed cheats"
fi

# todo: git clone just the plugin from https://github.com/crusoexia/vim-monokai
