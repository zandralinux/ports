TARG = gcc
DEPS = gmp mpfr mpc

<$mkbuild/mk.common-noinst

gcc:QV:
	CC="${CC} -static" ./configure \
		--prefix="$PREFIX" \
		--mandir="$PREFIX/share/man" \
		--libexecdir="$PREFIX/lib" \
		--disable-shared \
		--disable-multilib \
		--disable-nls \
		--disable-symvers \
		--disable-libsanitizer \
		--disable-libssp \
		--disable-werror \
		--disable-rpath \
		--disable-bootstrap \
		--disable-initfini-array \
		--enable-libstdcxx-time=rt \
		--enable-languages=c,c++ \
		--host=${HOST_TOOLCHAIN_TRIPLET} \
		--target=${TOOLCHAIN_TRIPLET} \
		--with-gmp-include=$gmp_includedir \
		--with-gmp-lib=$gmp_libdir \
		--with-mpc-include=$mpc_includedir \
		--with-mpc-lib=$mpc_libdir \
		--with-mpfr-include=$mpfr_includedir \
		--with-mpfr-lib=$mpfr_libdir
	make -j$nprocs all-gcc all-target-libgcc

install:QV:
	make DESTDIR="$ROOT" install-gcc install-target-libgcc
