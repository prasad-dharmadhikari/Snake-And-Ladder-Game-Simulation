#!/bin/bash -x

#Constants
POSITION=0
WINNING_POSITION=100
#Variables 
position=0
noPlay=0
ladder=1
snake=2
echo "Welcome to Snake and Ladder game"
# Roll a die to get ranmdom number between 1 to 6
#Winning condition
while(($position!=$WINNING_POSITION))
do
	rollDieOutcome=$((RANDOM%6+1))
	echo "Roll die outcome is:" $rollDieOutcome
	optionCheck=$((RANDOM%3))
	case $optionCheck in
		$noPlay)
			echo "Current position is:"$position
			echo "You stay in same position:"$position
			position=$position
			printf "\n"
			;;
		$ladder)
			echo "Current position is :" $position
			echo "You encountered a ladder."
			# Exact winning condition
			if(( $((position+rollDieOutcome))>100  ))
			then
				position=$position
				echo "Current position is:"$position
			else
				position=$((position+rollDieOutcome))
				echo "New position is:"$position
			fi
			printf "\n"
			;;
		$snake)
			echo "You Encountered snake."
			echo "Current position is :" $position
			# Exact restart condition
			if(($position<0))
			then
				echo "New position is:" $POSITION
				position=$POSITION
			else
				position=$((position-rollDieOutcome))
				echo "New position is:" $position
				position=$position
			fi
			printf "\n"
			;;
	esac
done
