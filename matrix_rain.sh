#!/bin/bash
printf "\033[32m"

# Set the dimensions of the terminal window
lines=$(tput lines)
columns=$(tput cols)

while true; do
    for i in {1..10}; do
        echo -ne "\033[$((RANDOM % lines + 1));$((RANDOM % columns + 1))H$((RANDOM % 2))"
    done
    sleep 0.1
done
