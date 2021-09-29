ctree: ctree.c
	gcc -o ctree ctree.c
test:
	if ./ctree | grep -q '\*O\*'; then echo "OK"; else exit 1; fi
install:
	mkdir -p $(DESTDIR)/usr/local/bin
	install -m 0755 ctree $(DESTDIR)/usr/bin/ctree
	mkdir -p $(DESTDIR)/usr/local/share/doc/ctree
	cp {README.md,LICENSE} $(DESTDIR)/usr/local/share/doc/ctree
clean:
	rm ctree
