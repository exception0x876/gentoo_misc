# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

XORG_MULTILIB=yes
inherit xorg-2

DESCRIPTION="X.Org Xfixes library"

KEYWORDS="~arm"
IUSE=""

RDEPEND=">=x11-libs/libX11-1.6.2[${MULTILIB_USEDEP}]
	>=x11-proto/fixesproto-5.0-r1[${MULTILIB_USEDEP}]
	>=x11-proto/xproto-7.0.24[${MULTILIB_USEDEP}]
	>=x11-proto/xextproto-7.2.1-r1[${MULTILIB_USEDEP}]"
DEPEND="${RDEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-5.0.1-_XEatDataWords.patch
	epatch_user
	eautoreconf
}
