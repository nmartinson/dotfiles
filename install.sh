#!/bin/bash

echo "==> Setting up your Mac..."

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make utilities available

export PATH="$DOTFILES_DIR/bin:$PATH"

# Package managers & packages

source "$DOTFILES_DIR/bash/install.sh"
source "$DOTFILES_DIR/brew/install.sh"
source "$DOTFILES_DIR/git/install.sh"
source "$DOTFILES_DIR/ruby/install.sh"
source "$DOTFILES_DIR/zsh/install.sh"
