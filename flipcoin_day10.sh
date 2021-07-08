echo "Welcome to the hackers on Flipping coin stimulation problem "
echo "enter the number: "
read n
hc=0
tc=0
for(( i=1; i<=n; i++ ))
do 
	coin=$(( RANDOM % 2 ))
	if(( coin == 0 ))
	then
		echo "flip-$i tails"
		(( tc++ ))
	else
		echo "flip-$i heads"
		(( hc++ ))
	fi
done
echo "heads_count = $hc and tails_count = $tc "
if(( hc > tc ))
then
	echo "heads won the stimulation task"
elif(( tc > hc ))
then
	echo "tails won the stimulation task"
else
	echo " it's a tie"
fi
