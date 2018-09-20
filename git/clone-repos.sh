#!/bin/bash

set -e

echo "==> Clone repositories..."

ssh_url="git@github.com:alexiscrack3"
workspace="$HOME/Development"

repos=(
    bash-cheat-sheet
    git-cheat-sheet
    vim-cheat-sheet
)

function save_current_directory() {
    pushd "$pwd"
}

function restore_previous_directory() {
    popd
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

function main {
    save_current_directory
    clone_all_repos
    restore_previous_directory
}

main
