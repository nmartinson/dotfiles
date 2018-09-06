#!/bin/bash

echo "==> Setting up rvm..."

\curl -L https://get.rvm.io | bash -s stable --auto-dotfiles

source ~/.rvm/scripts/rvm

echo "==> Setting up ruby..."

rvm use ruby --install --default

echo "==> Setting up rails..."

gem install rails --no-ri --no-rdoc
