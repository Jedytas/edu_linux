#!/bin/bash

file=$1
dirToWrite=$2

if [ ! -d "$file" ]; then
    echo "Directory ${file} doesn't exist"
    exit 1
fi

if [ ! -d "$dirToWrite" ]; then
    echo "Directory ${dirToWrite} doesn't exist"
    exit 1
fi

find "$file" -maxdepth 1 -mindepth 1 -type d | while read -r saved; do
    filename="${dirToWrite}/$(basename "$saved").txt"
    touch "$filename"
    echo "$(ls "$saved" | wc -l)" > "$filename"
    echo "$(ls "$saved" | wc -l)"
done

