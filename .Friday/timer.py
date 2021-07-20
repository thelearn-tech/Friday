

import os
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
    
    

# input time in seconds
t = input("Enter the time in seconds: ")
os.system('clear')
print("Timer Running")

countdown(int(t))

noti = open("timer_set_time.txt", "w")
noti.write(t)
noti.close()
