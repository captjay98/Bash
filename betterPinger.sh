#!/usr/bin/env bash

read -p "Enter address to ping :- " addy

if [ ping ]; then
	echo "pinging addy"
	ping $addy
else
	echo "USAGE: 5 is host on the network {IP ADDRESS}"
fi
