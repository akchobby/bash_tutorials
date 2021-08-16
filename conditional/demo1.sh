#!/bin/bash

# Demo for using if clause

# get the user name and UID
echo "UID: $(id -u)
Name: $(id -un)"

# Check if root or not
if [[ "${UID}" -eq 0 ]]
then
	echo 'Root user'
	exit 1
else
	echo 'Not Root user'
fi

USERNAME=$(id -un)
echo $USERNAME
