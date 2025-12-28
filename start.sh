#!/bin/bash

# This command will close all active conky
killall conky
sleep 2s
		
# Only the config listed below will be avtivated
# if you want to combine with another theme, write the command here
conky -c $HOME/.config/conky/Neo/01.conf &> /dev/null &
conky -c $HOME/.config/conky/Neo/02.conf &> /dev/null &
conky -c $HOME/.config/conky/Neo/03.conf &> /dev/null &
conky -c $HOME/.config/conky/Neo/04.conf &> /dev/null &
conky -c $HOME/.config/conky/Neo/05.conf &> /dev/null &
exit
