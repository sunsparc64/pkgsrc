# $NetBSD: buildlink3.mk,v 1.10 2017/02/06 13:54:50 wiz Exp $

BUILDLINK_TREE+=	py-notify-python

.if !defined(PY_NOTIFY_PYTHON_BUILDLINK3_MK)
PY_NOTIFY_PYTHON_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.py-notify-python+=	${PYPKGPREFIX}-notify-python>=0.1.1
BUILDLINK_ABI_DEPENDS.py-notify-python+=	${PYPKGPREFIX}-notify-python>=0.1.1nb28
BUILDLINK_PKGSRCDIR.py-notify-python?=	../../sysutils/py-notify-python

.include "../../x11/py-gtk2/buildlink3.mk"
.endif # PY_NOTIFY_PYTHON_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-notify-python
