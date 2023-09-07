#!/bin/bash

readonly parent_dir=$(dirname -- "$0")
cd $parent_dir/..

file_list=( $(find . -type f -name "*.sh") )

for file in "${file_list[@]}"; do
    echo "chmod +x $file"
    chmod +x $file
done
