TARG = sbase

<$mkbuild/mk.common-noinst

sbase:QV:
	cp -f ../config.mk config.mk
	sed -i '/sed\\/d;/find\\/d;/strings\\/d;/tar\\/d' Makefile
	make -j$nprocs DESTDIR="$ROOT"

install:QV:
	make -j$nprocs DESTDIR="$ROOT" install
