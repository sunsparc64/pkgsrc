# $NetBSD: Makefile,v 1.6 2017/01/22 13:10:18 wiz Exp $

DISTNAME=	Tie-Cycle-1.222
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Tie/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Tie-Cycle/lib/Tie/Cycle.pm
COMMENT=	Perl5 module to cycle through a list of values
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/Tie/Cycle/.packlist
USE_LANGUAGES=	# none


.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
