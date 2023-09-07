#!/bin/bash

readonly parent_dir=$(dirname -- "$0")
cd $parent_dir/..

readonly base_link="git@github.com:Vaultexe/"
readonly repos=`cat repos.txt`

for repo in $repos; do
    if [ ! -d "$repo" ]; then
        echo "Cloning $repo"
        git clone $base_link$repo.git
    fi
done

echo "All repos cloned successfully"
