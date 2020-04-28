TARG = gcc
DEPS = gmp mpfr mpc

<$mkbuild/mk.common-noinst

gcc:QV:
	CC="${CC} -static" ./configure \
		--prefix="$PREFIX" \
		--mandir="$ROOT/share/man" \
		--disable-shared \
		--disable-multilib \
		--disable-nls \
		--disable-bootstrap \
		--enable-languages=c,c++ \
		--host=$arch-linux-musl \
		--target=$arch-linux-musl \
		--with-gmp-include=$gmp_includedir \
		--with-gmp-lib=$gmp_libdir \
		--with-mpc-include=$mpc_includedir \
		--with-mpc-lib=$mpc_libdir \
		--with-mpfr-include=$mpfr_includedir \
		--with-mpfr-lib=$mpfr_libdir
	make -j$nprocs all-gcc

install:QV:
	make DESTDIR="$ROOT" install-gcc