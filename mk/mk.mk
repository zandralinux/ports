TARG = mk
INSTALL_BIN = mk/mk

<$mkbuild/mk.common

mk:QV:
	cd lib9
	make -j$nprocs PREFIX="$PREFIX"
	cd ../mk
	make -j$nprocs PREFIX="$PREFIX"
