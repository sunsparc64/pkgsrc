# $NetBSD: Makefile,v 1.21 2017/01/01 16:06:15 adam Exp $

DISTNAME=	kreversi-${_KDE_VERSION}
PKGREVISION=	5
CATEGORIES=	games
COMMENT=	the old reversi board game, also known as Othello.

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../games/libkdegames/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
