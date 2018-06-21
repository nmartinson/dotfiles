#!/bin/bash

echo "==> Setting up git..."

export DOTFILES_DIR
DOTFILES_DIR=~/.dotfiles

export PATH="$DOTFILES_DIR/bin:$PATH"

ln -sfv "$DOTFILES_DIR/git/.gitignore" ~
ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
