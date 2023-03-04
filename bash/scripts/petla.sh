#!/bin/bash

lista=(1 2 3 4 5)

echo ${lista[@]}

for element in ${lista[@]}; do
	echo "FOR: $element"
done

x=0
while [ $x -le 4 ]; do
	echo WHILE: ${lista[$x]}
	x=$((x+1))
done
