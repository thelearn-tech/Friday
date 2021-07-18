
import time
import os

def countdown(t):

    while t:
        mins, secs = divmod(t, 60)
        timer = '{:02d}:{:02d}'.format(mins, secs)
        print(timer, end="\r")
        time.sleep(1)
        t -= 1

    print('Time over')
    os.system('termux-notification --title "Time reached" --content "Your set timer is over" | termux-vibrate ')


# input time in seconds
t = input("Enter the time in seconds: ")


countdown(int(t))
