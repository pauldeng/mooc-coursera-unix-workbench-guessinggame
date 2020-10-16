#!/usr/bin/env bash

echo "Can you guss how many files in this directory $PWD?"

numFiles=$(ls | wc -l)

function gussing {
    read -rp "Enter your guessing: " guess
}

while true
do
  gussing
  if [[ $guess -eq $numFiles ]]
  then
    echo "Congratulations! Your guess is correct!"
    break
  elif [[ $guess -gt $numFiles ]]
  then
    echo "Your guess is too large! Please try again."
  elif [[ $guess -lt $numFiles ]]
  then
    echo "Your guess is too small! Please try again."
  fi
done