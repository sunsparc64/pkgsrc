# $NetBSD: buildlink3.mk,v 1.36 2017/02/07 19:38:48 joerg Exp $

BUILDLINK_TREE+=	ruby-gnome2-gtk

.if !defined(RUBY_GNOME2_GTK_BUILDLINK3_MK)
RUBY_GNOME2_GTK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ruby-gnome2-gtk+=	${RUBY_PKGPREFIX}-gnome2-gtk>=0.17.0
BUILDLINK_ABI_DEPENDS.ruby-gnome2-gtk+=	${RUBY_PKGPREFIX}-gnome2-gtk>=3.1.1nb1
BUILDLINK_PKGSRCDIR.ruby-gnome2-gtk?=	../../x11/ruby-gnome2-gtk

.include "../../devel/ruby-gnome2-pango/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # RUBY_GNOME2_GTK_BUILDLINK3_MK

BUILDLINK_TREE+=	-ruby-gnome2-gtk
