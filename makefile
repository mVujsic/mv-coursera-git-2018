README.md: guessinggame.sh
	touch README.md
	echo "# Project name: GUESSING GAME">>README.md
	date +"%T %D">>README.md 
	echo -n "Number of lines in guessingame.sh: ">>README.md
	wc -l guessinggame.sh|egrep -o "[0-9]+" >>README.md
