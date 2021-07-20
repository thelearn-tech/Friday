#!/bin/bash

t=$(cat timer_set_time.txt)

termux-notification --title "Time Over" --content "Your set timer of $t seconds is over" \
 --button1 "remove" --button1-action "termux-notification-remove 346969" --id 346969 | termux-vibrate 

