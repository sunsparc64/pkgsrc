# $NetBSD: Makefile,v 1.5 2017/02/08 00:06:54 joerg Exp $

DISTNAME=	pycryptodome-3.4.3
PKGNAME=	${DISTNAME:S/^py/${PYPKGPREFIX}-/}
PKGREVISION=	1
CATEGORIES=	security python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pycryptodome/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.pycryptodome.org/
COMMENT=	Cryptographic and hash functions for Python
LICENSE=	public-domain AND python-software-foundation

do-test:
	${RUN}cd ${WRKSRC};${SETENV} ${TEST_ENV} ${PYTHONBIN} ${PYSETUP} test

# XXX is this needed?
CFLAGS.SunOS+=	-std=c99 -D_XOPEN_SOURCE=600

BUILDLINK_API_DEPENDS.gmp+=	gmp>=5.0
.include "../../devel/gmp/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
