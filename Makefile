all: site

exe:
	stack build

site: exe
	stack exec -- site build

watch: site
	stack exec -- site watch

clean:
	stack exec -- site clean

distclean: clean
	stack clean

.PHONY: exe site watch clean distclean
