#!/usr/bin/env bash

var=0

while [ "$var" -ne 10 ]; do
	var=$((var + 1))

	if [ "$var" -eq 4 ]; then
		echo "bad luck"

	else if [ "$var" -eq 8 ]; then
		echo "good luck"

	else
		echo "best school"
	fi	
	fi
done
