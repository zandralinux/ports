TARG = \
	fs \
	busybox \
	cacertificates \
	curl \
	dropbear \
	e2fsprogs \
	extlinux \
	file \
	less \
	linux \
	mksh \
	ns-tools \
	pkgtools \
	sbase \
	sdhcp \
	sinit \
	smdev \
	ubase

<$mkbuild/mk.parent

cleanall:QV: clearcache
	for d in *; do
		[ -d $d ] && (cd $d; mk distclean; cd ..)
	done

clearcache:QV:
	rm -f */.cache-*.mk

installpkgs:QV:
	mkdir -p $ROOT/var/pkg
	for pkg in $TARG; do
		cd $pkg
		installpkg -r $ROOT *.pkg.tgz
		cd ..
	done
