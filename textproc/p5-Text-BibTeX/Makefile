# $NetBSD: Makefile,v 1.42 2017/01/16 10:55:14 wiz Exp $

DISTNAME=	Text-BibTeX-0.78
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gerg.ca/software/btOOL/
#HOMEPAGE=	http://search.cpan.org/dist/Text-BibTeX/
COMMENT=	Perl library for reading, parsing, and processing BibTeX files
LICENSE=	${PERL5_LICENSE}

BUILD_DEPENDS+=		p5-Capture-Tiny>=0.06:../../devel/p5-Capture-Tiny
BUILD_DEPENDS+=		p5-Config-AutoConf>=0.14:../../devel/p5-Config-AutoConf
BUILD_DEPENDS+=		p5-ExtUtils-LibBuilder>=0.01:../../devel/p5-ExtUtils-LibBuilder
#BUILD_DEPENDS+=		{perl>=5.14.1,p5-ExtUtils-CBuilder>=0.27}:../../devel/p5-ExtUtils-CBuilder

USE_LANGUAGES+=		c
PERL5_PACKLIST=		auto/Text/BibTeX/.packlist
PERL5_MODULE_TYPE=	Module::Build

ALL_ENV+=	TMPDIR=${WRKDIR}/tmp

pre-configure:
	${MKDIR} ${WRKDIR}/tmp

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
