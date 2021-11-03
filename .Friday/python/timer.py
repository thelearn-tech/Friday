#!/usr/bin/python3
#version 1.1
import os
import sys
import time

def countdown(t):

    while t:
        mins, secs = divmod(t, 60)
        timer = '{:02d}:{:02d}'.format(mins, secs)
        print(timer, end="\r")
        time.sleep(1)
        t -= 1
    os.system('clear')
    print('Time over')
    
    
argumentList = sys.argv
t = sys.argv[1]
print("Timer Running")



countdown(int(t))


os.system('termux-notification --title "Friday" --content "Your Your set timer of ' + t +' second is over" --button1 "remove" --button1-action "termux-notification-remove 346969" --id 346969 | termux-vibrate')
exit()
