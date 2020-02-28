#!/bin/bash -x

#Variables 
position=0
echo "Welcome to Snake and Ladder game"
# Roll a die to get ranmdom number between 1 to 6
rollDieOutcome=$((RANDOM%6+1))
echo $rollDieOutcome
