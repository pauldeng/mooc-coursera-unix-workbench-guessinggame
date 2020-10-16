all: readme

readme:
	echo "## The Unix Workbench course assignment" >> README.md
	echo "Make executed at: " >> README.md
	date >> README.md
	echo "Lines of code: " >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md
