# $NetBSD: Makefile,v 1.5 2017/02/06 13:56:00 wiz Exp $

PKGREVISION= 3
.include "../../meta-pkgs/xfce4/Makefile.common"

DISTNAME=	xfce4-taskmanager-1.1.0
CATEGORIES=	sysutils
MASTER_SITES=	http://archive.xfce.org/src/apps/xfce4-taskmanager/1.1/

HOMEPAGE=	http://goodies.xfce.org/projects/applications/xfce4-taskmanager
COMMENT=	Xfce task manager

MASTER_SITES=	http://archive.xfce.org/src/apps/xfce4-taskmanager/1.1/

# patch needs libkvm.
.include "../../mk/bsd.prefs.mk"
.if ${OPSYS} != "Linux"
LDFLAGS+=	-lkvm
.endif

.include "../../x11/libxfce4ui/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
