TARG = gmp

<$mkbuild/mk.common

gmp:QV:
	CC="$CC" ./configure \
		--build="${TOOLCHAIN_TRIPLET}" \
		--host="${HOST_TOOLCHAIN_TRIPLET}" \
		--prefix="$PREFIX" \
		--disable-shared \
		--enable-static
	make -j$nprocs
	rm -f .libs/libgmp.la .libs/libgmp.lai
