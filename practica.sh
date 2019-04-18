#!/bin/bash

# script that pings every IP from input.txt; the IP has to be the first word on the line
# cat => lists the content of a file in the terminal
# awk => parses words on every line; prints the first word in the terminal
# xargs => takes the input from the previous command and passes it as argument to ping
# | (pipe) => connects two commands through standard file interface

#awk '{print $1}' input.txt | xargs -r -I '{}' \
 # bash -c "echo '{}' | grep -q -e ':' && \
  #  ping6 -c 1 '{}' -W 1 || \
   # ping -c 1 '{}' -W 1"

#TODO Dan: Print the first x numbers from Fibonacci in a file

#TODO Irina: Search for the word "Elisabeth" in a file; insert "the first" after it if it doesn't exist

# replaces "Elizabeth" with "Elizabeth the first" in the same file
# sed -i 's/Elizabeth/Elizabeth the first/g' inputirina.txt

# replaces "Elizabeth" with "Elizabeth the first" in another file andthe first file(input) remains the same 
sed 's/Elizabeth/Elizabeth the first/g' inputirina.txt > outputirina.txt
echo -e "\nsed command was executed; check outputirina for the result"
