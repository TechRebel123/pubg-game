#!/bin/bash

echo "do you like PUBG/BGMI?(y/n):"
read pubg

if [[ $pubg == "y" ]]
then
	echo "you are awesome, lets go!!"
else
	echo "you are useless, get out of here!"
	exit
fi

echo "lets continue our journey"

sleep 3

echo "You have encountered TYRANT(zombie boss)"
sleep 2
echo "Do you choose to fight or die?(f/d):"
read fd

if [[ $fd == "f" ]]
then
	echo "GREAT"
else
	echo "YOU DIED"
	exit
fi

tyrant=$(( $RANDOM % 2 ))

echo "Choose a number between 0 and 1 (0/1):"
read number

if [[ $number == $tyrant ]]
then
	sleep 3
	echo "YOU DEFEATED TYRANT SUCCESFULLY"
else
	sleep 3
	echo "YOU DIED"
	exit
fi

echo "Lets continue"

sleep 3

echo "you came across 2 paths, one leading to pochinki and other to rozhok. where do you want to go?(p/r):"
read place1

if [[ $place1 == "p" ]]
then 
	echo "you encountered a red zone"
	echo "1. do you want to waste your time by hiding in a house"
	echo "2. or just go through red zone?"
	echo "CHOOSE (1/2):"
	read redzone

elif [[ $place1 == "r" ]]
then
	echo "you got spotted by an enemy"
	echo "1. do you want to fight him"
	echo "2. or do you want to run away?"
	echo "CHOOSE (1/2):"
	read enemy
else
	echo "wrong input,You died"
	exit
fi

redzone_enemy=$(( $RANDOM % 2 ))
enemy_enemy=$(( $RANDOM % 2 ))

if [[ $redzone == 1 ]]
then
	sleep 20
elif [[ $redzone == 2 ]]
then
	echo "great"
	sleep 3
	echo "CHOOSE (0/1)"
	read player01
fi

if [[ $player01 == $redzone_enemy ]]
then
	echo "YOU SURVIVED!!!"
else
	echo "YOU DIED"
	exit
fi

#rozhok

if [[ $enemy == 1 ]]
then
	echo "You were brave and fought the enemy"
	echo "CHOOSE(0/1)"
	read enemy_player
elif [[ $enemy == 2 ]]
then
	echo "YOU DIED because you were a COWARD"
else
	echo "Wrong input, u died"
	exit

fi

if [[ $enemy_enemy == $enemy_player ]]
then
	figlet YOU WON | lolcat
	exit

else
	echo "YOU LOST"
	exit
fi
