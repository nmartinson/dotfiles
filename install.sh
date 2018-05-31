#!/bin/bash

echo "==> Setting up your Mac..." 

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make utilities available

export PATH="$DOTFILES_DIR/bin:$PATH"

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~

# Package managers & packages

source "$DOTFILES_DIR/install/brew.sh"
