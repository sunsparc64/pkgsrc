# $NetBSD: Makefile,v 1.14 2016/06/08 19:24:57 wiz Exp $
#

DISTNAME=	Captcha-reCAPTCHA-Mailhide-0.94
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	6
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../../authors/id/A/AN/ANDYA/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Captcha-reCAPTCHA-Mailhide/
COMMENT=	Perl implementation of the reCAPTCHA Mailhide API
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Crypt-Rijndael-[0-9]*:../../security/p5-Crypt-Rijndael
DEPENDS+=	p5-HTML-Tiny>=0.904:../../www/p5-HTML-Tiny
#DEPENDS+=	{perl>=5.7.3,p5-MIME-Base64-[0-9]*}:../../converters/p5-MIME-Base64

PERL5_PACKLIST=	auto/Captcha/reCAPTCHA/Mailhide/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
