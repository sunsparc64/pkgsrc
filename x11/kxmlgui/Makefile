# $NetBSD: Makefile,v 1.3 2017/02/06 13:54:55 wiz Exp $

DISTNAME=	kxmlgui-${KF5VER}
PKGREVISION=	2
CATEGORIES=	x11

HOMEPAGE=	https://community.kde.org/Frameworks
COMMENT=	User configurable main windows
LICENSE=	gnu-gpl-v2 AND gnu-lgpl-v2.1

.include "../../meta-pkgs/kf5/Makefile.common"

USE_TOOLS+=	msgmerge

MAKE_DIRS+=	${PKG_SYSCONFDIR}/xdg/ui
CONF_FILES+=	${PREFIX}/share/examples/kxmlgui/ui_standards.rc \
		${PKG_SYSCONFDIR}/xdg/ui/ui_standards.rc

.include "../../lang/python/tool.mk"
.include "../../misc/attica-qt5/buildlink3.mk"
.include "../../x11/kglobalaccel/buildlink3.mk"
.include "../../x11/ktextwidgets/buildlink3.mk"
.include "../../x11/qt5-qtbase/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
