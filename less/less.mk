TARG = less
DEPS = ncurses
INSTALL_BIN = less

<$mkbuild/mk.common

less:
	CC="$CC -static -I$ncurses_includedir -L$ncurses_libdir" ./configure
	make -j$nprocs
