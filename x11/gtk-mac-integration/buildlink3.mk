# $NetBSD: buildlink3.mk,v 1.6 2017/02/07 11:15:43 adam Exp $

BUILDLINK_TREE+=	gtk-mac-integration

.if !defined(GTK_MAC_INTEGRATION_BUILDLINK3_MK)
GTK_MAC_INTEGRATION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gtk-mac-integration+=	gtk-mac-integration>=2.0.0
BUILDLINK_ABI_DEPENDS.gtk-mac-integration+=	gtk-mac-integration>=2.0.5nb4
BUILDLINK_PKGSRCDIR.gtk-mac-integration?=	../../x11/gtk-mac-integration

.include "../../x11/gtk2/buildlink3.mk"
.endif	# GTK_MAC_INTEGRATION_BUILDLINK3_MK

BUILDLINK_TREE+=	-gtk-mac-integration
