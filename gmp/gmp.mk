TARG = gmp

<$mkbuild/mk.common-noinst

gmp:
	CC="$CC" ./configure \
		--host="${HOST_TOOLCHAIN_TRIPLET}" \
		--prefix="$PREFIX" \
		--disable-shared \
		--enable-static
	make -j$nprocs

install:
	make -j$nprocs install DESTDIR="$ROOT"
