#!/bin/bash

set -e

echo "==> Setting up zsh..."

DOTFILES_DIR=~/.dotfiles

source "$DOTFILES_DIR/zsh/zsh.sh"
source "$DOTFILES_DIR/zsh/oh-my-zsh.sh"

ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sfv "$DOTFILES_DIR/system/.aliases" ~

unset DOTFILES_DIR
