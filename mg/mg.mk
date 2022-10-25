TARG = mg
DEPS = ncurses
INSTALL_BIN = src/mg
INSTALL_MAN1 = doc/mg.1

<$mkbuild/mk.common

mg:QV:
	./configure CFLAGS="$CFLAGS" \
		LDFLAGS="$LDFLAGS"
	CC="${CC} -static" make
