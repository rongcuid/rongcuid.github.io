all: site

exe:
	stack build

site: exe
	stack exec -- site build

watch: site
	stack exec -- site watch

commit:
	git add -v . -- :!docs/
	git commit

deploy: site
	stack exec -- site build
	git add docs
	git commit -m "Deploy at `date`"
	git push

clean:
	stack exec -- site clean

distclean: clean
	stack clean

.PHONY: exe site watch commit deploy clean distclean
