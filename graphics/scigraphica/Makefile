# $NetBSD: Makefile,v 1.79 2017/02/06 13:55:30 wiz Exp $

DISTNAME=	scigraphica-2.1.0
PKGREVISION=	28
CATEGORIES=	graphics math
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scigraphica/}

MAINTAINER=	drochner@NetBSD.org
HOMEPAGE=	http://scigraphica.sourceforge.net/
COMMENT=	Data analysis and technical graphics

USE_TOOLS+=		gmake intltool pkg-config

GNU_CONFIGURE=		YES
CONFIGURE_ARGS+=	--without-gnome
CONFIGURE_ARGS+=	--with-readline-include-path=${BUILDLINK_PREFIX.readline}/include
CONFIGURE_ARGS+=	--with-readline-path=${BUILDLINK_PREFIX.readline}/lib
CONFIGURE_ARGS+=	--with-termcap-include-path=${BUILDLINK_PREFIX.readline}/include
CONFIGURE_ARGS+=	--with-termcap-path=${BUILDLINK_PREFIX.readline}/lib
CONFIGURE_ENV+=		PYTHONBIN=${PYTHONBIN:Q}

USE_LIBTOOL=		YES
PTHREAD_AUTO_VARS=	yes

PYTHON_VERSIONS_INCOMPATIBLE=  34 35 36 # py-numarray via libscigraphica

pre-configure:
	ln -s ${PYTHONBIN} ${TOOLS_DIR}/bin/python

.include "../../devel/readline/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../graphics/libscigraphica/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
