# Python 3.6.9
# Use python3 for excution of this code
import time
import os
from datetime import datetime


os.system("echo excuting chating system of Friday on")
time.sleep(0.5)
os.system("date")
time.sleep(1.7) 
os.system("clear")
print("")

def night():
 print("Hi Sir")
 time.sleep(0.89)
 print("How was your day ")
 day = input("->  ")
 time.sleep(1)
 if day=="good":
	 os.system("clear")
	 print("")
	 print("I am glad to hear that ,Sir")
	  
	 time.sleep(1)
	 print("would like to tell me more about what happened today?")
	 print("")
	 tel = input("y/n -> ")
	 if tel == "y":
		 time.sleep(0.77)
		 print('Ok , tell me')
		 input("-> ")
		 time.sleep(0.8)
		 print("All this sound very fun")
		 time.sleep(0.8)
		 print("Bye Sir, have good night")
		 time.sleep(0.90) 
		 exit()
	 else:
		 print("Ok , we will talk later")
		 exit()
		 
 elif day == "ok":
	 print("Atleast better than having a bad day, Sir")
	 time.sleep(0.88)
	 time.sleep(1.88)
	 print("Well sir prepare for next day,")
	 time.sleep(0.7)
	 print("Next day might be better")
	 time.sleep(1)
	 exit()
 elif day == "bad":
     print("Why ,Sir what happned today")
     input("-> ")
     time.sleep(1)
     print("Thats sound bad for sure")
     time.sleep(0.7)
     print("Sir i will suggest, you to take rest and preare for next day")
     time.sleep(1)
     print("Because, a new day will bring new luck")
     time.sleep(1.88)
     print("Hopefully")
     time.sleep(1)
     print("Bye Sir, see you later")
     time.sleep(1)
     exit() 
	
 else:
	 print("wrong command use , good , bad , ok ")
	
 
def morning():
    os.system("clear")
    time.sleep(0.78)
    print("Very Good Morning, Sir")
    print("")
    time.sleep(0.88)
    print("How would you like to start your day ,sir")
    input("-> ")
    time.sleep(1)
    print("Sounds good ")
    time.sleep(0.8)
    print("Hopefully your day goes according to plan")
    time.sleep(0.9)
    exit()
    
    
        
def afternoon():
    os.system("clear")
    print("Good afternoon , Sir")
    time.sleep(0.8)
    print("")
    print("Seems like you are free today")
    input("-> ")
    print("")
    print("Ok")
    time.sleep(1)
    print("This stae is stil under devlopment")
    print("So bye ,Sir")
    time.sleep(2)
    exit() 
 
def evening():
    os.system("clear")
    print("Good evening, Sir")
    time.sleep(0.8)
    print("Today you are early")
    time.sleep(1)
    print("Any perticular reason")
    input("-> ")
    print("")
    print("Ok")
    time.sleep(1)
    print("This stage stil is under devlopment")
    print("So bye ,Sir")
    time.sleep(2)
    exit()
	
	
	 
 
 	
# Main logic
current_hour = int(datetime.now().strftime('%H'))
if current_hour<12:
    morning()
elif 12<=current_hour<18:
    afternoon()
elif 18<=current_hour<20:
    evening() 
else:
    night()
	
