<../v.mk

TARG = msmtp
DEPS = libressl zlib

INSTALL_BIN = src/msmtp
INSTALL_MAN1 = `{ ls doc/*.1 }


<$mkbuild/mk.common-noinst

msmtp:QV:
	export CFLAGS="$CFLAGS $DEPS_CFLAGS"
	export LDFLAGS="$LDFLAGS $DEPS_LDFLAGS"
	./configure --with-tls=openssl \
		--disable-nls --without-libidn \
		--without-libsecret
	make -j$nprocs

install:QV:
	make DESTDIR="$ROOT" install
