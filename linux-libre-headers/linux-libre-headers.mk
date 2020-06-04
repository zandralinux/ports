# deps: rsync
TARG = linux-libre-headers

<$mkbuild/mk.common-noinst

linux-libre-headers:QV:
	cp ../kernel-config-x86_64 .config

install:QV:
	make headers_install
	mkdir -p $ROOT/include
	cp -rf usr/include $ROOT/include
