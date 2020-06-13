TARG = mawk

<$mkbuild/mk.common-noinst

mawk:QV:
	CC="${CC} -static" ./configure \
		--prefix="$PREFIX"
	make -j$nprocs

install:QV:
	make DESTDIR="$ROOT" install
