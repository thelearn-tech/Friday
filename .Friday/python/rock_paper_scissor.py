#!/bin/python3

# by thelearn-tech
# Only to used with friday assistante
# https://github.com/thelearn-tech/Friday

import os
import time
import random


green="\033[1;32m"
lightgreen="\033[0m\033[32m"
red="\033[1;31m"
cyan="\033[1;36m"
yellow="\033[1;33m"
orange="\033[1;38;5;214m"
default="\033[0m"

my_score=0
com_score=0
rund=1

# Friday's Choice

cc1 = random.choice(["rock", "paper", "scissor"])
cc2 = random.choice(["paper", "scissor", "rock"])
cc3 = random.choice(["scissor", "rock", "paper"])
cc4 = random.choice(["rock", "paper", "scissor"])
cc5 = random.choice(["rock", "paper", "scissor"])

computer = random.choice([cc1, cc2, cc3, cc4, cc5])

def banner():
    print(" ")
    print(green + "A simple Rock, Paper, Scissor Game of 5 rounds.")
    print(" ")
    print(yellow + "Rules")
    print(" ")
    print(cyan+ "rock or 1" + green + " for Rock ")
    print(cyan + "paper or 2" + green + "for Paper")
    print(cyan+ "scissor or 3" + green + " for Scissor ")
    time.sleep(0.4)
    print(" ")
    input(default + "Enter to continue")
    os.system('clear')



# Main loop


banner)

for game in range(5):
    print(" ")
    pl = input(default + " My Choice=> " + green)
    print(" ")


    if  pl == "rock" or pl == "1":

        print(" ")

        print(default + "You " + green + "rock")
        time.sleep(1)
        print(" ")
        print(default + "Friday " + cyan + computer)
        if computer == "rock":
            print(" ")
            print(" ")
            print(default + " Round " + str(rund) + " Draw")
            print(" ")
            rund += 1
            time.sleep(3)
            os.system('clear')
        elif computer == "paper":
            print(" ")
            print(" ")
            print(yellow + " Friday Won " + green + "round " + str(rund))
            print(" ")
            com_score += 1
            rund += 1
            time.sleep(3)
            os.system('clear')
        elif computer == "scissor":
            print(" ")
            print(" ")
            print(orange + " You Won " + green + "round " + str(rund))
            print(" ")
            my_score += 1
            rund += 1
            time.sleep(3)
            os.system('clear')

        else:
            print(red + " Error 035")

    elif pl == "paper" or pl == "2":

        print(" ")
        print(default + "You " + green + "paper")
        time.sleep(1)
        print(" ")
        print(default + "Friday " + cyan + computer)
        if computer == "paper":
            print(" ")
            print(" ")
            print(default + " Round " + str(rund) + " Draw")
            print(" ")
            rund += 1
            time.sleep(3)
            os.system('clear')
        elif computer == "rock":
            print(" ")
            print(" ")
            print(orange + " You Won " + green + "round " + str(rund))
            print(" ")
            my_score += 1
            rund += 1
            time.sleep(3)
            os.system('clear')
        elif computer == "scissor":
            print(" ")
            print(" ")
            print(yellow + " Friday Won " + green + "round " + str(rund))
            com_score += 1
            rund += 1
            time.sleep(3)
            os.system('clear')
        else:
            print(red + " Error 035")

    elif pl == "scissor" or pl == "3":

        print(" ")
        print(default + "You " + green + "scissor")
        time.sleep(1)
        print(" ")
        print(default + "Friday " + cyan + computer)
        if computer == "scissor":
            print(" ")
            print(" ")
            print(default + " Round " + str(rund) + " Draw")
            print(" ")
            rund += 1
            time.sleep(3)
            os.system('clear')
        elif computer == "paper":
            print(" ")
            print(" ")
            print(orange + " You Won " + green + "round " + str(rund))
            print(" ")
            my_score += 1
            rund += 1
            time.sleep(3)
            os.system('clear')
        elif computer == "rock":
            print(" ")
            print(" ")
            print(yellow + " Friday Won " + green + "round " + str(rund))
            print(" ")
            com_score += 1
            rund += 1
            time.sleep(3)
            os.system('clear')

        else:
            print(red + " Error 035")
    else:
         print(red + " Error 007")
        


# calculating score

if int(com_score) < int(my_score):
    print(" ")
    print(" ")
    print(default + "My Score " + green +str(my_score))
    print(" ")
    print(default + "Friday's Score " + green +str(com_score))
    time.sleep(2.4)
    print(" ")
    print(green + "   You won the match")

elif int(com_score) == int(my_score):
    print(" ")
    print(" ")
    print(default + "My Score " + green +str(my_score))
    print(" ")
    print(default + "Friday's Score " + green +str(com_score))
    time.sleep(2.4)
    print(" ")
    print(yellow + 'Match Draw')
else:
    print(" ")
    print(" ")
    print(default + "My Score " + green +str(my_score))
    print(" ")
    print(default + "Friday's Score " + green +str(com_score))
    time.sleep(2.4)
    print(" ")
    print(cyan + "   Friday won the match")



exit()



