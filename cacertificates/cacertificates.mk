TARG = cacertificates

<v.mk
<$mkbuild/mk.common-noinst

cacertificates:QV:
	wget http://curl.haxx.se/ca/cacert-$v.pem

install:QV:
	install -Dm 644 cacert-$v.pem $ROOT$PREFIX/etc/ssl/certs/ca-certificates.crt
