#!/bin/bash

# Demo for adding path to the python lib search variable

# NOTE: to run this script use either source or . ./demo2.sh else the script 
# is run in a sub shell not lnked to the current shell

# Print current Python Path

echo $PYTHONPATH

# assining path
MYLIBPATH="/home/anilubuntu/bash_tutorialsa/conditional"


# Check if path added or not
[[ ":${PYTHONPATH}:" != *":${MYLIBPATH}:"* ]] && export PYTHONPATH="${PYTHONPATH}:${MYLIBPATH}"
