#!/usr/bin/bash

WALLPAPERS="$HOME/picture"
ALIST=( `ls -w1 $WALLPAPERS` )
while true;
do
	RANGE=${#ALIST[*]}
	SHOW=$(( $RANDOM % $RANGE ))
	feh --bg-scale $WALLPAPERS/${ALIST[$SHOW]}
	sleep 600
done
