# $NetBSD: Makefile,v 1.7 2016/06/08 19:24:08 wiz Exp $

DISTNAME=	ldns-1.6.17
PKGNAME=	p5-DNS-LDNS-0.06
PKGREVISION=	3
CATEGORIES=	net
MASTER_SITES=	http://www.nlnetlabs.nl/downloads/ldns/

MAINTAINER=	he@NetBSD.org
HOMEPAGE=	http://www.nlnetlabs.nl/projects/ldns/
COMMENT=	Perl5 bindings for the LDNS library
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	c

WRKSRC=		${WRKDIR}/${DISTNAME}/contrib/DNS-LDNS
PERL5_PACKLIST=	auto/DNS/LDNS/.packlist

.include "../../net/ldns/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
