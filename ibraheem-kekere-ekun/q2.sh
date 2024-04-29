#!/bin/bash
filename="demo.txt"
if [ -f /home/$filename ]
then
	echo "$filename exists in the home directory"
else
	echo "$filename does not exist in the home directory"
fi
