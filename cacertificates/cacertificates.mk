TARG = cacertificates

<$mkbuild/mk.common-noinst
<v.mk

cacertificates:QV:
	wget http://curl.haxx.se/ca/cacert-$v.pem

install:QV:
	install -Dm 644 cacert-$v.pem $ROOT$PREFIX/etc/ssl/cert.pem
