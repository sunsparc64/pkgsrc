# $NetBSD: Makefile,v 1.45 2017/02/06 13:55:39 wiz Exp $
#

DISTNAME=		galculator-2.1.3
PKGREVISION=		3
CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=galculator/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://galculator.sourceforge.net/
COMMENT=		Desktop calculator with scientific / RPN modes
LICENSE=		gnu-gpl-v2

USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-gtk3
USE_TOOLS+=		gmake msgfmt pkg-config intltool

.include "../../x11/gtk2/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
