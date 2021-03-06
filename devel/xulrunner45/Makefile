# $NetBSD: Makefile,v 1.10 2017/02/06 13:54:43 wiz Exp $

MOZ_BRANCH=		45.7
MOZ_BRANCH_MINOR=	.0esr
MOZ_VER=		${MOZ_BRANCH}${MOZ_BRANCH_MINOR}
DISTNAME=		firefox-${MOZ_VER}.source
MASTER_SITES=		${MASTER_SITE_MOZILLA_ALL:=firefox/releases/${MOZ_VER}/source/}
#MASTER_SITES+=		${MASTER_SITE_MOZILLA:=firefox/releases/${MOZ_VER}/source/}
EXTRACT_SUFX=		.tar.xz

PKGNAME=	xulrunner45-${MOZ_BRANCH}${MOZ_BRANCH_MINOR:S/esr//:S/b/beta/}
PKGREVISION=	1
CATEGORIES=	devel www

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://developer.mozilla.org/en/docs/XULRunner
COMMENT=	XML User Interface Language runtime environment
LICENSE=	mpl-1.1

WRKSRC=		${WRKDIR}/${DISTNAME:S/.source//}

DISTINFO_FILE=	${.CURDIR}/../../www/firefox45/distinfo
PATCHDIR=	${.CURDIR}/../../www/firefox45/patches

CHECK_PORTABILITY_SKIP+=	js/src/tests/update-test262.sh

MOZILLA_DIR=	# empty

PKGCONFIG_OVERRIDE+=	xulrunner45/installer/libxul-embedding.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner45/installer/libxul.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner45/installer/mozilla-gtkmozembed-embedding.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner45/installer/mozilla-gtkmozembed.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner45/installer/mozilla-js.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner45/installer/mozilla-nspr.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner45/installer/mozilla-nss.pc.in
PKGCONFIG_OVERRIDE+=	xulrunner45/installer/mozilla-plugin.pc.in

CONFIGURE_ARGS+=	--enable-application=xulrunner
CONFIGURE_ARGS+=	--enable-libxul

ALL_ENV+=		MOZILLA_PKG_NAME=xulrunner45

MAKE_ENV+=		FREEBL_NO_DEPEND=0

# workround for link of xulrunner-bin etc.
LDFLAGS+=		${COMPILER_RPATH_FLAG}${PREFIX}/lib/xulrunner45 ${COMPILER_RPATH_FLAG}${PREFIX}/lib
LDFLAGS.SunOS+=		-lm

CHECK_INTERPRETER_SKIP+=lib/xulrunner45/sdk/bin/header.py
CHECK_INTERPRETER_SKIP+=lib/xulrunner45/sdk/bin/typelib.py
CHECK_INTERPRETER_SKIP+=lib/xulrunner45/sdk/bin/xpidl.py
CHECK_INTERPRETER_SKIP+=lib/xulrunner45/sdk/bin/xpt.py

.include "../../www/firefox45/mozilla-common.mk"
.include "../../www/firefox45/options.mk"

post-extract:
	mv ${WRKSRC}/gfx/ycbcr/yuv_row_arm.s ${WRKSRC}/gfx/ycbcr/yuv_row_arm.S

pre-configure:
	cd ${WRKSRC} && mkdir ${OBJDIR}
	cd ${WRKSRC} && autoconf
	cd ${WRKSRC}/js/src && autoconf
	mkdir ${WRKSRC}/js/src/.deps

post-install:
	rm -f ${DESTDIR}${PREFIX}/lib/xulrunner45/libxpcomglue.a
	ln -s sdk/lib/libxpcomglue.a 					\
	  ${DESTDIR}${PREFIX}/lib/xulrunner45/libxpcomglue.a
	rm -f ${DESTDIR}${PREFIX}/lib/xulrunner45/libxpcomglue_s.a
	ln -s sdk/lib/libxpcomglue_s.a 					\
	  ${DESTDIR}${PREFIX}/lib/xulrunner45/libxpcomglue_s.a
	rm -f ${DESTDIR}${PREFIX}/lib/xulrunner45/libunicharutil_external_s.a
	ln -s sdk/lib/libunicharutil_external_s.a 			\
	  ${DESTDIR}${PREFIX}/lib/xulrunner45/libunicharutil_external_s.a
	rm -f ${DESTDIR}${PREFIX}/lib/xulrunner45/libmozglue.a
	ln -s sdk/lib/libmozglue.a 					\
	  ${DESTDIR}${PREFIX}/lib/xulrunner45/libmozglue.a
	${TOUCH} ${TOUCH_FLAGS} ${DESTDIR}${PREFIX}/include/xulrunner45/mozilla/throw_gcc.h

.include "../../mk/bsd.pkg.mk"
