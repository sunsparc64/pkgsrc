# $NetBSD: Makefile,v 1.9 2016/06/08 19:25:15 wiz Exp $

DISTNAME=	SCGI-0.6
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	7
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SCGI/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/SCGI/
COMMENT=	Perl 5 module to implement SCGI interface
LICENSE=	${PERL5_LICENSE}

PERL5_MODULE_TYPE=	Module::Build
USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/SCGI/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
