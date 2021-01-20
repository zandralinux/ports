INSTALL_BIN = binutils/addr2line binutils/ar binutils/cxxfilt binutils/elfedit binutils/nm-new binutils/objcopy binutils/objdump binutils/ranlib binutils/readelf binutils/size binutils/strings binutils/strip-new binutils/sysinfo gas/as-new ld/ld-new
TARG = $INSTALL_BIN

<$mkbuild/mk.common-noinst

$INSTALL_BIN:QV:
	./configure \
		--prefix="$PREFIX" \
		--disable-multilib \
		--disable-nls \
		--disable-gold \
		--disable-werror \
		--build=${TOOLCHAIN_TRIPLET} \
		--target=${TOOLCHAIN_TRIPLET}
	make -j$nprocs
	cd binutils
	rm bfdtest1 bfdtest2 ar addr2line cxxfilt elfedit nm-new \
		objcopy objdump ranlib readelf size strings strip-new
	make LDFLAGS="-all-static" -j$nprocs
	cd ../gas
	rm as-new
	make LDFLAGS="-all-static" -j$nprocs
	cd ../ld
	rm ld-new
	make LDFLAGS="-all-static" -j$nprocs

install:QV:
	make DESTDIR="$ROOT" install
