# $NetBSD: Makefile,v 1.3 2017/02/05 12:36:59 bsiegert Exp $

DISTNAME=	MoarVM-2017.01
CATEGORIES=	devel perl6
MASTER_SITES=	http://www.moarvm.org/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.moarvm.org/
COMMENT=	Virtual machine for Rakudo Perl 6
LICENSE=	artistic-2.0

USE_TOOLS+=	perl gmake
USE_LANGUAGES=	c c++

HAS_CONFIGURE=		yes
CONFIG_SHELL=		${PERL5}
LDFLAGS+=		${COMPILER_RPATH_FLAG}${PREFIX}/lib -L${PREFIX}/lib
CONFIGURE_ENV+=		LDFLAGS=${LDFLAGS:Q}
CONFIGURE_SCRIPT=	Configure.pl
CONFIGURE_ARGS=		--prefix=${PREFIX:Q} \
			--has-libatomic_ops \
			--has-libffi \
			--has-libuv \
			--has-libtommath

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Darwin"
PLIST_SUBST+=	EXT=dylib
.else
PLIST_SUBST+=	EXT=so
.endif

.include "../../devel/libatomic_ops/buildlink3.mk"
.include "../../devel/libffi/buildlink3.mk"
.include "../../devel/libuv/buildlink3.mk"
.include "../../math/ltm/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
