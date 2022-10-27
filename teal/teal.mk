TARG = teal

<$mkbuild/mk.common-noinst

teal:QV:
	make CC="$CC" CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS"

install:QV: teal
	make PREFIX="$PREFIX" DESTDIR="$ROOT" install
