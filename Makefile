all: benc.c benc
	rm -rf bin

	mkdir bin
	$(CC) benc.c -o bin/benc
	mv benc bin/benc
	echo "Done with target 'all'"

install: benc
	sudo cp bin/benc /usr/local/bin/benc
	sudo cp bin/benc /usr/local/bin/bc

	echo "Done with target 'install'"

tests: scanning.bc string.bc
	cd tests
	../bin/benc scanning.bc
	../bin/benc string.bc

	echo "Done with target 'tests'"
