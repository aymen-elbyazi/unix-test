README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "\n## Project Details" >> README.md
	echo "- *Date and Time*: $$(date)" >> README.md
	echo "- *Number of Lines in guessinggame.sh*: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
