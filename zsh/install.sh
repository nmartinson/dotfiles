#!/bin/bash

set -e

echo "==> Setting up zsh..."

export DOTFILES_DIR
DOTFILES_DIR=~/.dotfiles

export PATH="$DOTFILES_DIR/bin:$PATH"

source "$DOTFILES_DIR/zsh/zsh.sh"
source "$DOTFILES_DIR/zsh/oh-my-zsh.sh"

ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sfv "$DOTFILES_DIR/system/.aliases" ~