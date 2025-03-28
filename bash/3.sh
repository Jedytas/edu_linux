#!/bin/bash

for file in "$@"; do
    if test -f "$file"; then
        strokes=$(wc -l < "$file")
        echo "$file -> $strokes"
    else
        echo "Not found or not a file: $file"
    fi
done

