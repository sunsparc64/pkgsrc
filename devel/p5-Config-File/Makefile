# $NetBSD: Makefile,v 1.1 2017/02/07 09:22:18 hauke Exp $

DISTNAME=	Config-File-1.50
PKGNAME=	p5-${DISTNAME}
#PKGREVISION=	1
CATEGORIES=	devel perl5
MASTER_SITES=	https://cpan.metacpan.org/authors/id/G/GW/GWOLF/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://metacpan.org/pod/Config::File
COMMENT=	Parse a simple configuration file
LICENSE=	${PERL5_LICENSE}

PERL5_MODULE_TYPE=      Module::Build
PERL5_PACKLIST=         auto/Config/File/.packlist
USE_LANGUAGES=          # none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
