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
  printf "\033[0m\033[?25h\033[H\033[2J"
}

# Trap to handle Ctrl-C and reset the terminal
trap reset_terminal INT

# Hide the cursor and clear the screen
printf "\033[?25l\033[H\033[2J"

# Rain loop
while true; do
  # Randomly position the name
  x=$(random 1 $(tput cols))
  y=$(random 1 $(tput lines))
  
  # Set the position and print the name
  printf "\033[${y};${x}f\033[32mNathan"
  
  # Sleep for a short interval
  sleep 0.05
done
