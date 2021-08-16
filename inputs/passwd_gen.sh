#!/bin/bash

# assigns user input to env variable

# read user input, here hard coded
MYPASS="Password"

# shuffle it with special chars
S="!@#$%^&*()_+=-"
N="123457890"

while [[ $MYPASS == "Password" ]]
do	
	MYPASS=$MYPASS$(echo $S | fold -w1 | shuf | head -c1)$(echo $N | fold -w3 | shuf | head -c3)
	echo $MYPASS
	MYPASS=$(echo $MYPASS | fold -w8 | shuf | head -c8)
done

echo $MYPASS


