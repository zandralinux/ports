TARG = gmp

<$mkbuild/mk.common

gmp:QV:
	CC="$CC" ./configure \
		--host="${HOST_TOOLCHAIN_TRIPLET}" \
		--prefix="$PREFIX" \
		--disable-shared \
		--enable-static
	make -j$nprocs
	rm -f .libs/libgmp.la .libs/libgmp.lai
