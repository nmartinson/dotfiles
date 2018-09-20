#!/bin/bash

set -e

echo "==> Setting up your Mac..."

GLOBAL_DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Package managers & packages

source "$GLOBAL_DOTFILES_DIR/bash/install.sh"
source "$GLOBAL_DOTFILES_DIR/brew/install.sh"
source "$GLOBAL_DOTFILES_DIR/git/install.sh"
source "$GLOBAL_DOTFILES_DIR/ruby/install.sh"
source "$GLOBAL_DOTFILES_DIR/zsh/install.sh"

sh "$GLOBAL_DOTFILES_DIR/macos/defaults.sh"

unset GLOBAL_DOTFILES_DIR
