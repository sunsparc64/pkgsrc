# $NetBSD: Makefile,v 1.13 2016/06/08 19:22:59 wiz Exp $

DISTNAME=	Filesys-Notify-Simple-0.12
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Filesys/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Filesys-Notify-Simple/
COMMENT=	Perl5 module providing a simple and dumb file system watcher
LICENSE=	${PERL5_LICENSE}

BUILD_DEPENDS+=	p5-Test-SharedFork-[0-9]*:../../devel/p5-Test-SharedFork

PERL5_PACKLIST=		auto/Filesys/Notify/Simple/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
