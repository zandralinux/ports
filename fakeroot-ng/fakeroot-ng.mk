TARG = fakeroot
INSTALL_BIN = fakeroot-ng
INSTALL_SYMLINK = \
		fakeroot-ng /bin/fakeroot

<$mkbuild/mk.common

fakeroot:QV:
	export CFLAGS="${CFLAGS} ${DEPS_CFLAGS}"
	export LDFLAGS="${LDFLAGS} ${DEPS_LDFLAGS}"
	CC="$CC -static" ./configure \
		--prefix=/
	make -j$nprocs
