#!/usr/bin/env bash

var=1

while [ "$var" -ne 11 ]; do
	echo $var "best school"
	if [ "$var" -eq 9 ]; then
		echo "hi"
	fi	
	var=$((var + 1))
done
