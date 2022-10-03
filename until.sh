#!/usr/bin/env bash

var=1

until [ "$var" -eq 11 ]; do
	echo $var "best school"
	var=$((var + 1))
done
