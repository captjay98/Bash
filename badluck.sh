#!/usr/bin/env bash

var=0

while [ "$var" -ne 20 ]; do
	var=$((var + 1))

	if [ "$var" -eq 4 ]; then
		echo $var
		echo "bad luck from china"

	else if [ "$var" -eq 9 ]; then
		echo $var
		echo "bad luck from japan"

	else if [ "$var" -eq 17 ]; then
		echo $var
		echo "bad luck from italy"
	
	else
		echo "$var"
	fi	
	fi
	fi
done
