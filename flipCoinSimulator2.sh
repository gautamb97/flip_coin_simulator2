#!/bin/bash -x

echo "WELCOME TO FLIP COIN SIMULATOR2"

HEADWON=0;
TAILWON=0;

for (( i=0; i<10; i++))
do
flipCoinCheck=$((RANDOM%2))

if [ $flipCoinCheck -eq 0 ]
then
        echo "HEADS";
	HEADWON=$((HEADS++))
else
        echo "TAILS";
	TAILWON=$((TAILS++))
fi
done

echo $HEADWON "NUMBER OF TIMES HEAD WON";
echo $TAILWON "NUMBER OF TIMES TAIL WON";
