TARG = mandoc
DEPS = zlib

<$mkbuild/mk.common-noinst

mandoc:
	export CFLAGS="${CFLAGS} ${DEPS_CFLAGS}"
	export LDFLAGS="${LDFLAGS} ${DEPS_LDFLAGS}"
	echo "CC=${CC}" >> configure.local
	echo "PREFIX=\"${PREFIX}\"" >> configure.local
	mv configure configure.old
	sed '/^CC=/d' configure.old > configure
	chmod +x configure
	./configure
	make -j$nprocs CFLAGS="$CFLAGS" LDFLAGS="$LDFLAGS"

install:QV:
	make -j$nprocs install DESTDIR="$ROOT" MANDIR="/share"