# $NetBSD: Makefile,v 1.24 2016/10/18 14:36:38 taca Exp $

DISTNAME=	libxml-ruby-2.9.0
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:C/ruby-//}
CATEGORIES=	textproc

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://xml4r.github.io/libxml-ruby/
COMMENT=	Support module for libxml2 library
LICENSE=	mit

USE_GCC_RUNTIME=	yes

CONFIGURE_ARGS+=	\
	--with-xml2-include=${BUILDLINK_PREFIX.libxml2}/include/libxml2

.include "../../lang/ruby/gem.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
