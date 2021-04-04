<../v.mk
BIN = file
INSTALL_BIN = file
INSTALL_OTHER1 = ../magic/magic.mgc
INSTALL_OTHER1_DIR = /share/file
DEPS = zlib

MAGIC = $PREFIX/share/file/magic

<$mkbuild/mk.common

file:
	./configure
	make
