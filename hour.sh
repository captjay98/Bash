#!/usr/bin/env bash

var=0

while [ "$var" -ne 59 ]; do

	if [ "$var" -eq 0 ]; then
		echo "Hour: 0"
	fi
	var=$((var + 1))
	echo $var

done

var=1
while [ "$var" -ne 10 ]; do

	if [ "$var" -eq 1 ]; then
		echo "Hour: 1"
	fi
	echo $var

	var=$((var + 1))

done
