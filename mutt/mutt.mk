TARG = mutt
DEPS = libressl ncurses

INSTALL_MAN1 = `{ ls -1 doc/*.1 }
INSTALL_BIN = mutt smime_keys pgpewrap

<$mkbuild/mk.common

mutt:QV:
	export CFLAGS="$CFLAGS $DEPS_CFLAGS"
	export LDFLAGS="$LDFLAGS $DEPS_LDFLAGS"
	CC="$CC" ./configure \
		--build="${TOOLCHAIN_TRIPLET}" \
		--host="${HOST_TOOLCHAIN_TRIPLET}" \
		--prefix="$PREFIX" \
		--mandir="$ROOT/share/man" \
		--disable-shared \
		--disable-nls \
		--disable-iconv \
		--with-ssl \
		--with-curses \
		--with-mailpath="/var/spool/mail" \
		--enable-static
	# make doc/makedoc.c on host.
	$HOSTCC doc/makedoc.c -o doc/makedoc -D_GNU_SOURCE -D_BSD_SOURCE -DHAVE_STRERROR
	#
	make -j$nprocs
