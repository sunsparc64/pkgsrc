# $NetBSD: Makefile,v 1.7 2017/02/06 13:55:51 wiz Exp $

DISTNAME=	syncthing-gtk-0.9.2.3
PKGREVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=syncthing/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/syncthing/syncthing-gtk
COMMENT=	GTK3 & Python based GUI for Syncthing
LICENSE=	gnu-gpl-v2

DEPENDS+=	syncthing>=0.13.0:../../net/syncthing
DEPENDS+=	psmisc-[0-9]*:../../sysutils/psmisc # for killall

PYTHON_VERSIONS_ACCEPTED=	27
PYTHON_VERSIONED_DEPENDENCIES=	dateutil
EGG_NAME=	${DISTNAME:S/0/v0/:S/-/_/}

REPLACE_PYTHON+=		*.py scripts/*.py syncthing_gtk/*.py

SUBST_CLASSES+=		paths
SUBST_STAGE.paths=	pre-build
SUBST_MESSAGE.paths=	Fixing hard-coded paths
SUBST_FILES.paths=	scripts/syncthing-gtk
SUBST_FILES.paths+=	syncthing-gtk.desktop
SUBST_FILES.paths+=	syncthing_gtk/app.py
SUBST_FILES.paths+=	syncthing_gtk/uisettingsdialog.py
SUBST_FILES.paths+=	syncthing_gtk/wizard.py
SUBST_SED.paths=	-e 's|/usr/share/syncthing-gtk|${PREFIX}/share/syncthing-gtk|'

BUILDLINK_ABI_DEPENDS.libnotify+=	libnotify>=0.7.6nb4
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../devel/py-gobject3/buildlink3.mk"
BUILDLINK_API_DEPENDS.librsvg+=	librsvg>=2.40.9nb2	# for introspection
.include "../../graphics/librsvg/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/versioned_dependencies.mk"
.include "../../lang/python/distutils.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
