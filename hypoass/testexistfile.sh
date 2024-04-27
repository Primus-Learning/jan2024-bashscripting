#!/bin/bash

#Providing information in /path/to/file_name
file_name="/home/demo.txt" 

#Checking if a file exists
if [ -f "$file_name" ]; 
then
    echo "$file_name file exists in the home directory."
else
    echo "$file_name file does not exists in the home directory."
fi