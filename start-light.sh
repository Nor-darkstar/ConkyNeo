#!/bin/bash

# This command will close all active conky
killall conky
sleep 2s
		
# Only the config listed below will be avtivated
# if you want to combine with another theme, write the command here
conky -c $HOME/.config/conky/Neo/01-light.conf &> /dev/null &
conky -c $HOME/.config/conky/Neo/02-light.conf &> /dev/null &
conky -c $HOME/.config/conky/Neo/03-light.conf &> /dev/null &
conky -c $HOME/.config/conky/Neo/04-light.conf &> /dev/null &
conky -c $HOME/.config/conky/Neo/05-light.conf &> /dev/null &
exit
