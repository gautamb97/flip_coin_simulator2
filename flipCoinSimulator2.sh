#!/bin/bash -x

echo "WELCOME TO FLIP COIN SIMULATOR2"

HEADWON=0;
TAILWON=0;
MAX_COUNT=21;

while [ $HEADWON -le 21 ] && [ $TAILWON -le 21 ]
do
flipCoinCheck=$((RANDOM%2))

if [ $flipCoinCheck -eq 0 ]
then
        echo "HEADS";
	HEADWON=$((HEADWON+1))
else
        echo "TAILS";
	TAILWON=$((TAILWON+1))
fi
done

echo $HEADWON "NUMBER OF TIMES HEAD WON";
echo $TAILWON "NUMBER OF TIMES TAIL WON";

if [ $HEADWON -eq 21 ]
then
 	echo "HEADS WON";
elif [ $TAILWON -eq 21 ]
then
	echo "TAILS WON";
else
	echo "TIE"
fi
if [ $HEADWON -gt 21 ]
then
	diff=$(($HEADWON-$TAILWON))
	echo $diff "NUMBER OF TIMES HEAD WON";
else 
	diff=$(($TAILWON-$HEADWON))
	echo $diff "NUMBER OF TIMES TAIL WON";
fi
