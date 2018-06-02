#!/bin/bash

echo "==> Setting up your Mac..." 

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make utilities available

export PATH="$DOTFILES_DIR/bin:$PATH"

# Package managers & packages

source "$DOTFILES_DIR/install/brew.sh"
source "$DOTFILES_DIR/install/brew-cask.sh"
source "$DOTFILES_DIR/install/zsh.sh"

# Bunch of symlinks

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~

# Source dotfiles

source ~/.zshrc
