<$mkbuild/mk.common-noinst

install:QV:
	$INSTALL -d -m 755 "$ROOT/lib/firmware"
	cp -a bin/* "$ROOT/lib/firmware/"
	rm -f "$ROOT/lib/firmware/WHENCE"
	rm -f "$ROOT/lib/firmware/"LICENSE.*
	rm -f "$ROOT/lib/firmware/"LICENCE.*
