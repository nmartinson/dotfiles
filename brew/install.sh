#!/bin/bash

echo "==> Setting up brew..."

export DOTFILES_DIR
DOTFILES_DIR=~/.dotfiles

export PATH="$DOTFILES_DIR/bin:$PATH"

source "$DOTFILES_DIR/brew/brew.sh"
source "$DOTFILES_DIR/brew/brew-cask.sh"
source "$DOTFILES_DIR/brew/brew-fonts.sh"
source "$DOTFILES_DIR/brew/brew-versions.sh"

cp "$DOTFILES_DIR/brew/com.googlecode.iterm2.plist" ~/Library/Preferences
