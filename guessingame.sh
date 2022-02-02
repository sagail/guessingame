#!/usr/bin/env bash
function userin {
    read userinput 
}

function check {
    if [[ $userinput -lt total ]]
    then
        echo "your answer is too low, Guess Again"
        userin
    elif [[ $userinput -gt total ]]
    then 
        echo "your answer is too high, Guess Again"
        userin
        
fi
}

# Total items in directory
total=$(ls | wc -l)
# First Guess
echo "Guess number of files in the current directory "
userin

while [[ $userinput -ne $total ]]
do  
    # check condition
    check
done
echo "You Guessed the correct answer"
