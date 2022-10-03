#!/usr/bin/env bash

if [ -e school ]; then
	echo "school file exists"
	
	if [ -s school ]; then
		echo "school file is empty"
	else
		echo "school file is not empty"
	fi

	if [ -f school ]; then
		echo "school is a regular file"
	fi
else
	echo "school file does not exist"
fi

