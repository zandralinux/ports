TARG = xorgcompositeproto

<$mkbuild/mk.common-noinst

xorgcompositeproto:QV:
	./configure \
		--prefix="$prefix" \
		--mandir="$ROOT/share/man"
	make -j$nprocs
	make install DESTDIR="`pwd`/lib"