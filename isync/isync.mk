<../v.mk

TARG = src/mbsync
DEPS = libsasl zlib

INSTALL_BIN = src/mbsync
INSTALL_MAN1 = src/*.1

<$mkbuild/mk.common

src/mbsync:
	export LDFLAGS="-static"
	./configure --with-sasl=${libsasl_includedir}/.. \
		--with-zlib=${zlib_includedir}/.. \
		--without-ssl
	make -j$nprocs
