#!/bin/bash

echo "==> Fetching repositories..."

workspace="$HOME/Development/Asynchrony"

function main() {
    cd $workspace
    repos=($(ls | grep "myhome"))
    # echo "LENGTH = ${#repos[@]}"
    for repo in ${repos[@]}; do
        cd "$workspace/$repo"
        pwd
        git fetch -p
        cd ..
    done
}

main

