#!/bin/bash

DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create symlinks
# TODO: consider using "-f" option to remove existing destination files 
ln -sv "$DOTFILES_DIR/.aliases" ~/.bash_aliases
#ln -sv "$DOTFILES_DIR/.prompt" ~/.bash_prompt
#ln -sv "$DOTFILES_DIR/.bash_profile" ~/.bash_profile
