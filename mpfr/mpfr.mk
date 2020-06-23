TARG = mpfr
DEPS = gmp

<$mkbuild/mk.common-noinst

mpfr:QV:
	CC="$CC" ./configure \
		--host="${HOST_TOOLCHAIN_TRIPLET}" \
		--prefix="$PREFIX" \
		--disable-shared \
		--enable-static \
		--with-gmp-include=$gmp_includedir \
		--with-gmp-lib=$gmp_libdir
	make -j$nprocs
	make DESTDIR=`pwd`/lib install
	rm -f lib/lib/libmpfr.la

install:QV:
	make -j$nprocs install DESTDIR="$ROOT"
