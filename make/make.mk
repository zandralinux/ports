# TODO: bump to 4.0.

<../v.mk

BIN = make
OBJ = `{ls *.c glob/*.c | sed 's/.$/o/' | grep -v '^amiga.o$' | grep -v '^remote-cstms.o$' | grep -v '^vmsfunctions.o$' | grep -v '^vmsify.o$' | grep -v '^vmsjobs.o$'}
INSTALL_BIN = make
INSTALL_MAN1 = make.1

<$mkbuild/mk.default

NPROC = $nprocs
LOCAL_CFLAGS = -I. -Iglob \
	-DFILE_TIMESTAMP_HI_RES=1 \
	-DHAVE_ALLOCA=1 \
	-DHAVE_ALLOCA_H=1 \
	-DHAVE_ANSI_COMPILER=1 \
	-DHAVE_ATEXIT=1 \
	-DHAVE_CLOCK_GETTIME=1 \
	-DHAVE_DECL_BSD_SIGNAL=1 \
	-DHAVE_DECL_SYS_SIGLIST=0 \
	-DHAVE_DECL__SYS_SIGLIST=0 \
	-DHAVE_DECL___SYS_SIGLIST=0 \
	-DHAVE_DIRENT_H=1 \
	-DHAVE_DUP2=1 \
	-DHAVE_FCNTL_H=1 \
	-DHAVE_FDOPEN=1 \
	-DHAVE_FILENO=1 \
	-DHAVE_FORK=1 \
	-DHAVE_GETCWD=1 \
	-DHAVE_GETGROUPS=1 \
	-DHAVE_GETLOADAVG=1 \
	-DHAVE_GETRLIMIT=1 \
	-DHAVE_GETTIMEOFDAY=1 \
	-DHAVE_INTTYPES_H=1 \
	-DHAVE_LIMITS_H=1 \
	-DHAVE_LOCALE_H=1 \
	-DHAVE_LSTAT=1 \
	-DHAVE_MEMORY_H=1 \
	-DHAVE_MKSTEMP=1 \
	-DHAVE_MKTEMP=1 \
	-DHAVE_PIPE=1 \
	-DHAVE_READLINK=1 \
	-DHAVE_REALPATH=1 \
	-DHAVE_SA_RESTART=1 \
	-DHAVE_SETEGID=1 \
	-DHAVE_SETEUID=1 \
	-DHAVE_SETLINEBUF=1 \
	-DHAVE_SETREGID=1 \
	-DHAVE_SETREUID=1 \
	-DHAVE_SETRLIMIT=1 \
	-DHAVE_SETVBUF=1 \
	-DHAVE_SIGACTION=1 \
	-DHAVE_STDARG_H=1 \
	-DHAVE_STDINT_H=1 \
	-DHAVE_STDLIB_H=1 \
	-DHAVE_STRCASECMP=1 \
	-DHAVE_STRCOLL=1 \
	-DHAVE_STRDUP=1 \
	-DHAVE_STRERROR=1 \
	-DHAVE_STRINGS_H=1 \
	-DHAVE_STRING_H=1 \
	-DHAVE_STRNCASECMP=1 \
	-DHAVE_STRNDUP=1 \
	-DHAVE_STRSIGNAL=1 \
	-DHAVE_SYS_PARAM_H=1 \
	-DHAVE_SYS_RESOURCE_H=1 \
	-DHAVE_SYS_STAT_H=1 \
	-DHAVE_SYS_TIMEB_H=1 \
	-DHAVE_SYS_TIME_H=1 \
	-DHAVE_SYS_TYPES_H=1 \
	-DHAVE_SYS_WAIT_H=1 \
	-DHAVE_UNISTD_H=1 \
	-DHAVE_VFORK=1 \
	-DHAVE_VPRINTF=1 \
	-DHAVE_WAIT3=1 \
	-DHAVE_WAITPID=1 \
	-DHAVE_WORKING_FORK=1 \
	-DHAVE_WORKING_VFORK=1 \
	-DMAKE_HOST=\"$TOOLCHAIN_TRIPLET\" \
	-DMAKE_JOBSERVER=1 \
	-DMAKE_SYMLINKS=1 \
	-DPACKAGE=\"make\" \
	-DLOCALEDIR=\"$PREFIX/share/locale\" \
	-DINCLUDEDIR=\"$PREFIX/include\" \
	-DLIBDIR=\"$LIBDIR\" \
	-DPATH_SEPARATOR_CHAR=\':\' \
	-DRETSIGTYPE=void \
	-DSCCS_GET=\"get\" \
	-DSTDC_HEADERS=1 \
	-DST_MTIM_NSEC=tv_nsec \
	-DTIME_WITH_SYS_TIME=1 \
	-D_ALL_SOURCE=1 \
	-D_GNU_SOURCE=1 \
	-D_POSIX_PTHREAD_SEMANTICS=1 \
	-D_TANDEM_SOURCE=1 \
	-D__EXTENSIONS__=1 \
	-DVERSION=\"$v\"

config.h:Q:
	touch config.h

$OBJ: config.h
