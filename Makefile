all: site

site:
	stack build
	stack exec -- site build

watch: site
	stack exec -- site watch

clean:
	stack exec -- site clean

distclean: clean
	stack clean

.PHONY: site watch clean distclean
