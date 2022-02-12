all: unsfark

.PHONY: clean

clean:
	-rm unsfark

unsfark: unsfark.c unsfark.h unsfark-cli.c
	gcc -Wall -g -mfpmath=387 -o unsfark unsfark.c unsfark-cli.c `pkg-config --cflags --libs zlib` 
