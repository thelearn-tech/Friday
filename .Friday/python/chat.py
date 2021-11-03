#!/usr/bin/python3
# Python 3.6.9
# Use python3 for excution of this code
# chat.py version 1.2

import os
import sys
import time
from datetime import datetime


# colors
green="\033[1;32m"
lightgreen="\033[0m\033[32m"
red="\033[1;31m"
cyan="\033[1;36m"
yellow="\033[1;33m"
orange="\033[1;38;5;214m"
default="\033[0m"

# techinical
print("excuting chating system of Friday on")
time.sleep(0.5)
os.system("date")
time.sleep(1.7) 
os.system("clear")
print("")




def night():
    print(" ")
    print(green + "Hi " + gen )
    time.sleep(1)
    print(green + "How was your day ")
    day = input("->  ")
    time.sleep(1)
    if day=="good":
        
        os.system("clear")
        print("")
        print(green + "I am glad to hear that ," + gen)
        time.sleep(1)
        print(green + "Would like to tell me more about what happened today?")
        print(" ")
        tel = input(cyan + "yes/no -> " + default)
        if tel == "yes":
            time.sleep(0.77)
            print('Ok , tell me')
            input("-> ")
            sleep(0.8)
            print(green + "All this sound very fun")
            time.sleep(0.8)
            print(green + "Bye Sir, have good night" + default)
            time.sleep(0.90) 
            exit()
        else:
           print(green + "Ok , we will talk later")
           time.sleep(0.6)
           print(green + "Have a good night " + gen + default)
           time.sleep(2)
           exit()
         
    elif day == "ok":
        
        
	    print(green + "Atleast better than having a bad day, " + gen)
	    time.sleep(0.88)
	    time.sleep(1.88)
	    print(green + "Well " + gen + " prepare for next day,")
	    time.sleep(0.7)
	    print(green + "Next day might be better" + default)
	    time.sleep(1)
	    exit()
    elif day == "bad":
        
        print(green + "Why ," + gen + " what happned today")
        input(cyan + "-> " + default)
        time.sleep(1)
        print(green + "Thats sound bad for sure")
        time.sleep(0.7)
        print(green + gen + ", I will suggest, you to take rest and preare for next day")
        time.sleep(1)
        print(green + "Because, a new day will bring new luck")
        time.sleep(1.88)
        print(green + "Hopefully")
        time.sleep(1)
        print(green + "Bye, " + gen +" see you later" + default )
        time.sleep(1)
        exit() 
	
    else:
        
        print(yellow + "wrong Answer use  good , bad , ok " + default)
	
 
def morning():
    os.system("clear")
    time.sleep(0.78)
    print(green + "Very Good Morning, " + gen)
    print("")
    time.sleep(0.88)
    print(green + "How would you like to start your day ," + gen)
    input("-> ")
    time.sleep(1)
    print(green + "Sounds good ")
    time.sleep(0.8)
    print(green + "Hopefully your day goes according to plan" + default)
    time.sleep(0.9)
    print(green + "cause you never know")
    time.sleep(0.9)
    print(green + "Have a good day, " + gen + ".")
    exit()
    
    
        
def afternoon():
    os.system("clear")
    print(" ")
    print(green + "Good afternoon ," + gen)
    time.sleep(0.8)
    print("")
    print(green + "Seems like you are free today")
    input("-> ")
    print("")
    print(green + "Ok")
    time.sleep(1)
    print(green + "This stage is stil under devlopment")
    print(green + "So bye ," + gen + default)
    time.sleep(2)
    exit() 
 
def evening():
    os.system("clear")
    print(green + "Good evening, " + gen)
    time.sleep(0.8)
    print(green + "Today you are early")
    time.sleep(1)
    print(green +"Any perticular reason")
    input("-> ")
    print("")
    print(green + "Ok")
    time.sleep(1)
    print(green + "This stage stil is under devlopment")
    print(green + "So bye ," + gen + default)
    time.sleep(2)
    exit()
	
	
	 
argumentList = sys.argv
gender = sys.argv[1]

 	
# Main logic
if gender == "--female":
    gen = "Mam"
    current_hour = int(datetime.now().strftime('%H'))
    if current_hour<12:
        morning()
    elif 12<=current_hour<18:
        afternoon()
    elif 18<=current_hour<20:
        evening() 
    else:
        night()
elif gender == "--male":
    gen = "Sir"
    current_hour = int(datetime.now().strftime('%H'))
    if current_hour<12:
        morning()
    elif 12<=current_hour<18:
        afternoon()
    elif 18<=current_hour<20:
        evening() 
    else:
        night()



else:
    gen = "Sir"
    current_hour = int(datetime.now().strftime('%H'))
    if current_hour<12:
        morning()
    elif 12<=current_hour<18:
        afternoon()
    elif 18<=current_hour<20:
        evening() 
    else:
        night()
	
