<$libsasl_DEPDIR/v.mk

libsasl_libdir = ${libsasl_DEPDIR}/cyrus-sasl-$v/lib/lib
libsasl_includedir = ${libsasl_DEPDIR}/cyrus-sasl-$v/lib/include

libsasl_CFLAGS = -I${libsasl_includedir}
libsasl_LDFLAGS = -L${libsasl_libdir} -lssl

DEPS_CFLAGS = $DEPS_CFLAGS ${libsasl_CFLAGS}
DEPS_LDFLAGS = $DEPS_LDFLAGS ${libsasl_LDFLAGS}
