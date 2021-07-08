echo "Welcome to the hackers on Flipping coin stimulation problem "
#UC-1
coin=(( RANDOM % 2 ))
if(( coin == 0))
then
	echo "tails"
else
	echo "heads"
fi 



#difference 2 between hc and tc
tc1=21
fc=0
min_diff=2
hc=0
tc=0
while(( 1 ))
do
	(( fc++ ))	
	echo -n "flip - $fc is"
	coin=$(( RANDOM % 2 ))
	if(( coin == 0 ))
	then
		echo "it's tail"
		(( hc++ ))
	else	
		echo "it's heads"
		(( tc++ ))
	fi
	hc_tc_diff=$(( hc -tc ))
	if(( hc == tc1 && hc_tc_diff >= min_diff ))
	then
		echo "head won with difference $hc_tc_diff points "
		break
	elif(( tc == tc1 && ${hc_tc_diff} >= mini_diff ))
	then
		echo "tails won with difference ${hc_tc_diff} points"
		break
	fi
done
echo "the heads count is $hc and tails count is $tc  "
