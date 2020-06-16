<$mkbuild/mk.common-noinst

install:QV:
	make -j$nprocs DESTDIR="$ROOT" install
