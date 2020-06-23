TARG = libncurses

<$mkbuild/mk.common-noinst

libncurses:QV:
	CC="$CC -static" ./configure \
		--build="$TOOLCHAIN_TRIPLET" \
		--host="$HOST_TOOLCHAIN_TRIPLET" \
		--prefix="$PREFIX" \
		--mandir="$MANDIR" \
		--datadir="$PREFIX/share" \
		--without-tests \
		--with-normal \
		--enable-sigwinch \
		--disable-nls \
		--without-dlsym \
		--without-cxx \
		--without-cxx-binding \
		--enable-widec \
		--without-ada \
		--with-terminfo-dirs="$PREFIX/etc/terminfo:$PREFIX/lib/terminfo:$PREFIX/share/terminfo" \
		--with-fallbacks="linux vt100 xterm xterm-256color" </dev/ptmx
	make -j$nprocs
	ln -sf curses.h include/ncurses.h
	cd lib
	for lib in ncurses form panel menu ; do
		ln -sf lib${lib}w_g.a lib${lib}_g.a
		ln -sf lib${lib}w.a lib${lib}.a
	done


install:QV:
	make -j$nprocs install DESTDIR="$ROOT"
