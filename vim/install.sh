#!/bin/bash

echo "==> Setting up vim..."

DOTFILES_DIR=~/.dotfiles

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~

unset DOTFILES_DIR
