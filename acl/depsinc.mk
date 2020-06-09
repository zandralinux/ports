<$acl_DEPDIR/v.mk

acl_libdir = ${acl_DEPDIR}/acl-v/lib/lib
acl_includedir = ${acl_DEPDIR}/acl-v/lib/include

acl_CFLAGS = -I${acl_includedir}
acl_LDFLAGS = -L${acl_libdir}

DEPS_CFLAGS = $DEPS_CFLAGS ${acl_CFLAGS}
DEPS_LDFLAGS = $DEPS_LDFLAGS ${acl_LDFLAGS}
