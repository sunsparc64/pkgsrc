# $NetBSD: Makefile,v 1.10 2016/06/08 19:22:54 wiz Exp $

DISTNAME=	ExtUtils-LibBuilder-0.08
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=ExtUtils/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/ExtUtils-LibBuilder/
COMMENT=	Perl5 module for building C libraries
LICENSE=	${PERL5_LICENSE}

#BUILD_DEPENDS+=		{perl>=5.14.1,p5-ExtUtils-CBuilder>=0.23}:../../devel/p5-ExtUtils-CBuilder

USE_LANGUAGES=		c
PERL5_PACKLIST=		auto/ExtUtils/LibBuilder/.packlist
PERL5_MODULE_TYPE=	Module::Build

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
