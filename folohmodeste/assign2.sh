#!/bin/bash
desk_dir=$desktop
if [ "desk_dir/demo.txt" ];
then
	echo "file demo.txt exist in my home directory,"
else
	echo "file demo.txt deos not exist in my home directory"
fi
