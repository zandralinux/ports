<$attr_DEPDIR/v.mk

attr_libdir = ${attr_DEPDIR}/attr-$v/lib/lib
attr_includedir = ${attr_DEPDIR}/attr-$v/lib/include

attr_CFLAGS = -I${attr_includedir}
attr_LDFLAGS = -L${attr_libdir}

DEPS_CFLAGS = $DEPS_CFLAGS ${attr_CFLAGS}
DEPS_LDFLAGS = $DEPS_LDFLAGS ${attr_LDFLAGS}
