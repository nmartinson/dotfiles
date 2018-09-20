#!/bin/bash

set -e

echo "==> Setting up rvm, ruby, and rails..."

if test ! $(which rvm); then
    echo "Installing rvm"
    \curl -L https://get.rvm.io | bash -s stable --auto-dotfiles
    source ~/.rvm/scripts/rvm
else
    echo "rvm is already installed"
fi

if test ! $(which ruby); then
    echo "Installing ruby"
    rvm use ruby --install --default
else
    echo "ruby is already installed"
fi

if test ! $(which rails); then
    echo "Installing rails"
    gem install rails --no-ri --no-rdoc
else
    echo "rails is already installed"
fi
