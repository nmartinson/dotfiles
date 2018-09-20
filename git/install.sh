#!/bin/bash

set -e

echo "==> Setting up git..."

DOTFILES_DIR=~/.dotfiles

ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~

sh "$DOTFILES_DIR/git/github.sh"

unset DOTFILES_DIR
