#!/bin/bash

set -e

echo "==> Setting up bash..."

DOTFILES_DIR=~/.dotfiles

ln -sfv "$DOTFILES_DIR/bash/.bashrc" ~
ln -sfv "$DOTFILES_DIR/bash/.bash_profile" ~
