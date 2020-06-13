TARG = \
	fs \
	busybox \
	curl \
	dropbear \
	e2fsprogs \
	extlinux \
	file \
	linux-libre \
	mksh \
	ns-tools \
	pkgtools \
	sbase \
	sdhcp \
	sinit \
	smdev \
	ubase

<$mkbuild/mk.parent

cleanall:QV:
	for d in *; do
		[ -d $d ] && (cd $d; mk clean; cd ..)
	done

clearcache:QV:
	rm */.cache-*.mk
