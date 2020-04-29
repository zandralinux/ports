TARG = libsasl

<$mkbuild/mk.common-noinst

libsasl:QV:
	CC="$CC -static" ./configure \
		--build="${TOOLCHAIN_TRIPLET}" \
		--host="${HOST_TOOLCHAIN_TRIPLET}" \
		--prefix="$PREFIX" \
		--mandir="$ROOT/share/man" \
		--disable-shared --disable-gssapi \
		--enable-static --disable-sql \
		--enable-plain --enable-login \
		--disable-auth-sasldb
	make -j$nprocs
	# install lib for use as a dependency.
	make -j$nprocs install DESTDIR="`pwd`/lib"
	# remove .la files for now ?
	find `pwd`/lib -iname "*.la" -exec rm {} \;

install:QV:
	make -j$nprocs install DESTDIR="$ROOT" V="1"
