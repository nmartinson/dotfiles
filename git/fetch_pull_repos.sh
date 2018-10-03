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

            for branch in $(git for-each-ref --format='%(refname:short)' refs/heads/); do
                git rev-parse --verify $branch &> /dev/null
                if [ $? -eq 0 ]; then
                    git checkout $branch
                    git reset --hard origin/$branch
                fi
            done

            cd ..
        fi
    done
}

main

