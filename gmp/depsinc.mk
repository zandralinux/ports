<$gmp_DEPDIR/v.mk

DEPS_CFLAGS = $DEPS_CFLAGS -I$gmp_DEPDIR/gmp-$v/lib/include
DEPS_LDFLAGS = $DEPS_LDFLAGS -L$gmp_DEPDIR/gmp-$v/lib/lib

gmp_includedir = $gmp_DEPDIR/gmp-$v/
gmp_libdir = $gmp_DEPDIR/gmp-$v/.libs
