all: README.md

README.md:
	echo "---Guessing Game---\n" > README.md
	echo "Makefile ran on: `date '+%Y-%m-%d %H:%M:%S'`\n" >> README.md
	echo "Lines in guessinggame.sh: `wc -l < guessinggame.sh`" >> README.md

clean:
	rm -f README.md
