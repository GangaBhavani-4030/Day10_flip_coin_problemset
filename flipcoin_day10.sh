echo "Welcome to the hackers on Flipping coin stimulation problem "
coin=$(( RANDOM % 2 ))
if(( coin == 0 ))
then
	echo "tails"
else
	echo "heads"
fi
