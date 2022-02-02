#!/usr/bin/env bash

all: README.md

README.md: guessingame.sh
	touch README.md
	echo "Guess In Game - The unix workbench" > README.md
	echo "Date Created - " $$(date)  >> README.md 
	wc -l guessingame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md