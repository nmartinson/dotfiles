#!/bin/bash

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Make utilities available

export PATH="$DOTFILES_DIR/bin:$PATH"

ln -sfv "$DOTFILES_DIR/runcom/.bash_profile" ~
