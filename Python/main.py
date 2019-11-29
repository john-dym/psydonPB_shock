"""
Python 3.7.0
Python-psydonPB_shock
Script that will parse a text file output from GMOD. Provides a GUI interface to also test/setup the Microcontroller
network.
"""
#Standard Libraries
import os

#Third Party Libraries
import PySimpleGUI

txt_file = "shock.txt"
ROUND_ACTIVE = 3    #TTT has an assigned number for when the Round is currently Active.
INNOCENT_ROLES = ["innocent", "detective", "jester", "swapper", "mercenary", "glitch", "phantom"]
TRAITOR_ROLES = ["traitor", "hypnotist", "zombie", "vampire", "assassin", "killer"] #I may implement a end round punishment for the losers

def parse_gmod_txt_file(txt_file):
    with open(txt_file, "r") as file:
        data = file.read()
    lyst = data.split("\n")
    gmod_output = []
    for ele in lyst:
        gmod_output.append(ele.split(","))
    last_ele = len(gmod_output) - 1
    if gmod_output[last_ele] == [""]:
        gmod_output.pop(last_ele)
    return gmod_output

def main():
    data = parse_gmod_txt_file(txt_file)
    print(data)
    print()
    pass

if __name__ == "__main__":
    main()