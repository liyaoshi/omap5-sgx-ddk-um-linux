DESTDIR ?= ${DISCIMAGE}
SRCDIR = ./targetfs

prefix = /usr
etcdir = /etc
libdir = ${prefix}/lib
localdir = ${prefix}/local

all:

install: 
	mkdir -p ${DESTDIR}${etcdir}
	mkdir -p ${DESTDIR}${libdir}
	mkdir -p ${DESTDIR}${localdir}
	cp -ar ${SRCDIR}/etc/* ${DESTDIR}${etcdir}
	cp -ar ${SRCDIR}/lib/* ${DESTDIR}${libdir}
	cp -ar ${SRCDIR}/local/* ${DESTDIR}${localdir}
