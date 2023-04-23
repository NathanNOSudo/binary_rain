#!/bin/bash

# Function to generate a random number
random() {
  min=$1
  max=$(($2-$min+1))
  num=$(($RANDOM%$max+$min))
  echo $num
}

# Function to reset the terminal
reset_terminal() {
  tput sgr0
  tput cnorm
  tput clear
  stty sane
  exit 0
}

# Trap to handle Ctrl-C and reset the terminal
trap reset_terminal INT

# Save current terminal settings and apply new ones
stty -echo -icanon
tput civis
tput clear

# Rain loop
while true; do
  # Randomly position the name
  x=$(random 1 $(tput cols))
  y=$(random 1 $(tput lines))
  
  # Set the position and print the name
  tput cup $y $x
  tput setaf 2
  echo -n "Nathan"
  
  # Sleep for a short interval
  sleep 0.05
done
