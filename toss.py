#!/usr/bin/python3
# Python 3.6.9 or higher

import random

green="\033[1;32m"

cc1 = random.choice(["Heads", "Tails"])
cc2 = random.choice(["Heads", "Tails"])
cc3 = random.choice(["Heads", "Tails"])
cc4 = random.choice(["Heads", "Tails"])
cc5 = random.choice(["Heads", "Tails"])

tp1 = random.choice([cc1, cc2, cc3, cc4, cc5])
tp2 = random.choice([cc5, cc4, cc3, cc2, cc1])


toss_result = random.choice([tp1, tp2])
print(green + toss_result)
