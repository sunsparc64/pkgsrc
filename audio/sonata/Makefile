# $NetBSD: Makefile,v 1.47 2017/02/06 13:55:06 wiz Exp $

EGG_NAME=	Sonata-1.6.2.1
DISTNAME=	${EGG_NAME:tl}
PKGREVISION=	19
CATEGORIES=	audio
MASTER_SITES=	http://download.berlios.de/sonata/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	jfranz@bsdprojects.net
HOMEPAGE=	http://sonata.berlios.de/
COMMENT=	Elegant GTK2 client for the Music Player Daemon
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-SOAPpy-[0-9]*:../../net/py-soappy
DEPENDS+=	${PYPKGPREFIX}-mpd-[0-9]*:../../audio/py-mpd

PYTHON_VERSIONS_INCOMPATIBLE=	34 35 36 # py-xml via py-soappy, py-gtk2

USE_TOOLS+=	pkg-config msgfmt

SUBST_CLASSES+=		mandir
SUBST_STAGE.mandir=	pre-configure
SUBST_VARS.mandir=	PKGMANDIR
SUBST_FILES.mandir=	setup.py

# gtk threading bugfix
BUILDLINK_ABI_DEPENDS.pygtk2+= ${PYPKGPREFIX}-gtk2>=2.12.1nb1

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
BUILDLINK_API_DEPENDS.pygtk2+= ${PYPKGPREFIX}-gtk2>=2.12.0
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
