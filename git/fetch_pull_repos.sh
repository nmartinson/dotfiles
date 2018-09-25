#!/bin/bash

echo "==> Fetching and pulling repositories..."

workspace="$HOME/Development/Asynchrony"

function main() {
    cd $workspace
    repos=($(ls | grep "myhome"))
    # echo "LENGTH = ${#repos[@]}"
    for repo in ${repos[@]}; do
        if [ -d "$workspace/$repo" ]; then
            cd "$workspace/$repo"
            pwd
            git fetch -p
            git stash -u
            
            git rev-parse --verify master &> /dev/null
            if [ $? -eq 0 ]; then
                git checkout master
                git reset --hard origin/master
            fi
            
            git rev-parse --verify develop &> /dev/null
            if [ $? -eq 0 ]; then
                git checkout develop
                git reset --hard origin/develop
            fi

            cd ..
        fi
    done
}

main

