all: site

site:
	stack build
	stack exec -- site build

clean:
	stack exec -- site clean

distclean: clean
	stack clean

