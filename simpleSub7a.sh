#!/bin/bash
# written by khalil meguenni, Thu 12 Jul 17:44:01 CET 2018

((counter = 0))
while :
do
	read -p "Press Space or Enter " -s -n 1 pressedKey # reads only one character
	clear 
	case "$pressedKey" in
		'' ) # space or enter
			((counter += 1))
			echo -e "	\033[1m\033[92m$counter\033[0m 	"
			echo -e "Press \033[1mr\033[0m to reset, \033[1mq\033[0m to quite"
			;;

		"r" ) # reset
			((counter = 0))
			echo -e "	\033[1m$counter\033[0m 	"
			echo -e "Press \033[1mr\033[0m to reset, \033[1mq\033[0m to quite"
			;;

		"q" ) # quite
			break
			;;
		* ) # other keys, nothing to do
			echo -e "	\033[1m$counter\033[0m 	"
			echo -e "Press \033[1mr\033[0m to reset, \033[1mq\033[0m to quite"
	esac
done