# $NetBSD: Makefile,v 1.59 2017/02/06 13:54:44 wiz Exp $

DISTNAME=	gegl-0.3.4
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	http://download.gimp.org/pub/gegl/0.3/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	http://gegl.org/
COMMENT=	Graph based image processing framework
LICENSE=	gnu-gpl-v3

USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		gmake pkg-config intltool msgfmt
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--disable-docs
CONFIGURE_ENV+=		ac_cv_path_ASCIIDOC=no
CONFIGURE_ENV+=		ac_cv_path_ENSCRIPT=no
CONFIGURE_ENV+=		ac_cv_path_SDL_CONFIG=no
CONFIGURE_ENV+=		ac_cv_prog_RUBY=no
PKGCONFIG_OVERRIDE+=	gegl.pc.in

.include "../../mk/bsd.prefs.mk"

PLIST_VARS+=	v4l

.if ${OPSYS} == "Linux" && exists(/usr/include/linux/videodev.h)
PLIST.v4l=	yes
.endif

.include "options.mk"

BUILDLINK_API_DEPENDS.babl+=	babl>=0.1.12
.include "../../graphics/babl/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/jasper/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../textproc/json-glib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
