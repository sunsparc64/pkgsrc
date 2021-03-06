# $NetBSD: Makefile,v 1.19 2017/01/01 16:05:59 adam Exp $

DISTNAME=	Botan-1.11.33
PKGNAME=	${DISTNAME:tl}
PKGREVISION=	1
CATEGORIES=	security
MASTER_SITES=	http://botan.randombit.net/releases/
EXTRACT_SUFX=	.tgz

MAINTAINER=	joerg@NetBSD.org
HOMEPAGE=	http://botan.randombit.net/
COMMENT=	Portable, easy to use, and efficient C++ crypto library
LICENSE=	2-clause-bsd

HAS_CONFIGURE=		yes
USE_LANGUAGES=		c++

PYTHON_FOR_BUILD_ONLY=	yes

CONFIG_SHELL=		${PYTHONBIN}
CONFIGURE_SCRIPT=	./configure.py
CONFIGURE_ARGS+=	--prefix=${PREFIX} --with-zlib --with-boost --destdir=${DESTDIR}${PREFIX}

REPLACE_PYTHON+=	*.py src/scripts/*.py

.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Mclang)
CONFIGURE_ARGS+=	--cc-bin=${CXX} --cc=clang
.endif

.if ${MACHINE_ARCH} == "x86_64"
CONFIGURE_ARGS+=	--cpu=amd64
.elif ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=	--cpu=i386
.elif ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS+=	--cpu=ppc
.elif ${MACHINE_ARCH} == "powerpc64"
CONFIGURE_ARGS+=	--cpu=ppc64
.elif ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=	--cpu=arm
.endif

MAKE_FLAGS+=	LIB_OPT=${CXXFLAGS:Q}

USE_TOOLS+=	gmake

PY_PATCHPLIST=	yes

MAKE_FLAGS.SunOS+=	USER_APP_LINKS_TO=-lnsl

.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
