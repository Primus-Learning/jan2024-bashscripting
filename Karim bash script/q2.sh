#!/bin/bash

file_path="$HOME/demo.txt"

if [ -f "$file_path" ]; then
    echo "File demo.txt exists in the home directory."
else
    echo "File demo.txt does not exist in the home directory."
fi