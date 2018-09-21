#!/bin/bash

DOTFILES_DIR=~/.dotfiles

source "$DOTFILES_DIR/lib/colors.sh"

echo "==> ${BOLD}Setting up vim...${NORMAL}"

ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~

unset DOTFILES_DIR
