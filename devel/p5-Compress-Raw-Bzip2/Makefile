# $NetBSD: Makefile,v 1.33 2017/01/02 12:05:59 wen Exp $

DISTNAME=	Compress-Raw-Bzip2-2.070
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Compress/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Compress-Raw-Bzip2/
COMMENT=	Perl5 low-level interface to bzip2 compression library
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=		c
PERL5_PACKLIST=		auto/Compress/Raw/Bzip2/.packlist
MAKE_ENV+=		BUILD_BZIP2=0
MAKE_ENV+=		BZIP2_LIB=${BUILDLINK_PREFIX.bzip2}/lib
MAKE_ENV+=		BZIP2_INCLUDE=${BUILDLINK_PREFIX.bzip2}/include

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
