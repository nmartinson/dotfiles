#!/bin/bash

set -e

ssh_url="git@github.com:alexiscrack3"
workspace="$HOME/test"

repos=(
    bash-cheat-sheet
    git-cheat-sheet
    vim-cheat-sheet
)

function save_current_directory() {
  pushd "$pwd"
}

function clone_all_repos() {
  mkdir -p $workspace
  cd $workspace
  for repo in "${repos[@]}"; do
    clone_repo $repo
  done
}

function clone_repo() {
  repo=$1

  if [ -d "$workspace/$repo" ]; then
    echo "Repo ${repo} already exists"
  else
    echo "Cloning ${repo} into $workspace/$repo"
    git clone "$ssh_url/${repo}.git"
  fi
}

function restore_current_directory {
  popd
}

function main {
  echo "==> Cloning all repos"
  save_current_directory
  clone_all_repos
  restore_current_directory
}

main
