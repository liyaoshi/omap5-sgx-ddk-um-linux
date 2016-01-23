DESTDIR ?= ${DISCIMAGE}
SRCDIR = ./targetfs

prefix = /usr
etcdir = /etc
incdir = ${prefix}/include
libdir = ${prefix}/lib
localdir = ${prefix}/local

all:

install: 
	mkdir -p ${DESTDIR}${etcdir}
	mkdir -p ${DESTDIR}${incdir}
	mkdir -p ${DESTDIR}${libdir}
	mkdir -p ${DESTDIR}${localdir}
	cp -ar ${SRCDIR}/etc/* ${DESTDIR}${etcdir}
	cp -ar ${SRCDIR}/include/* ${DESTDIR}${incdir}
	cp -ar ${SRCDIR}/lib/* ${DESTDIR}${libdir}
	cp -ar ${SRCDIR}/local/* ${DESTDIR}${localdir}
