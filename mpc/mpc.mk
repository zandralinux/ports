TARG = mpc
DEPS = gmp mpfr

<$mkbuild/mk.common

mpc:QV:
	CC="$CC" ./configure \
		--build="${TOOLCHAIN_TRIPLET}" \
		--host="${HOST_TOOLCHAIN_TRIPLET}" \
		--prefix="$PREFIX" \
		--disable-shared \
		--enable-static \
		--with-gmp-include=$gmp_includedir \
		--with-gmp-lib=$gmp_libdir \
		--with-mpfr-include=$mpfr_includedir \
		--with-mpfr-lib=$mpfr_libdir
	make -j$nprocs
	make DESTDIR=`pwd`/lib install
