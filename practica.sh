#!/bin/bash

# script that pings every IP from input.txt; the IP has to be the first word on the line
# cat => lists the content of a file in the terminal
# awk => parses words on every line; prints the first word in the terminal
# xargs => takes the input from the previous command and passes it as argument to ping
# | (pipe) => connects two commands through standard file interface

cat input.txt | awk '{print $1}' | xargs -n 1 ping -c 1

#TODO Dan: Print the first x numbers from Fibonacci in a file

#TODO Irina: Search for the word "Elisabeth" in a file; insert "the first" after it if it doesn't exist
