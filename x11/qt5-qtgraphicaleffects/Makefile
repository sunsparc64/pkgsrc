# $NetBSD: Makefile,v 1.17 2017/02/06 13:56:11 wiz Exp $

DISTNAME=	qtgraphicaleffects-opensource-src-${QTVERSION}
PKGNAME=	qt5-qtgraphicaleffects-${QTVERSION}
PKGREVISION=	5
COMMENT=	Qt5 module for Graphics effects

BUILD_TARGET=		sub-src
MAKE_ENV+=		QTDIR=${QTDIR}

INSTALL_ENV+=		INSTALL_ROOT=${DESTDIR}
INSTALLATION_DIRS+=	lib/pkgconfig

.include "../../x11/qt5-qtbase/Makefile.common"

.include "../../x11/qt5-qtdeclarative/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
