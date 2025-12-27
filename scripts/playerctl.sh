#!/bin/bash

# Nor_darkstar/ConkyNeo
# Simple script to get playerctl status

PCTL=$(playerctl status)

if [[ ${PCTL} == "" ]]; then
	echo "Nothing"
else
	playerctl metadata xesam:artist
fi

exit
