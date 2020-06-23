TARG = gmp

<$mkbuild/mk.common-noinst

gmp:QV:
	CC="$CC" ./configure \
		--host="${HOST_TOOLCHAIN_TRIPLET}" \
		--prefix="$PREFIX" \
		--disable-shared \
		--enable-static
	make -j$nprocs
	rm -f .libs/libgmp.la .libs/libgmp.lai

install:QV:
	make -j$nprocs install DESTDIR="$ROOT"
