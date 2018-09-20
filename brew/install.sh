#!/bin/bash

set -e

echo "==> Setting up brew..."

DOTFILES_DIR=~/.dotfiles

PATH="$DOTFILES_DIR/bin:$PATH"

source "$DOTFILES_DIR/brew/brew.sh"
source "$DOTFILES_DIR/brew/brew-cask.sh"
source "$DOTFILES_DIR/brew/brew-fonts.sh"
source "$DOTFILES_DIR/brew/brew-versions.sh"

unset DOTFILES_DIR
