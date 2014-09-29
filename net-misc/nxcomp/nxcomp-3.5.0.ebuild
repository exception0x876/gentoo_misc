# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="NXComp"
HOMEPAGE=""
SRC_URI="ftp://ftp.openbsd.com/ports/distfiles/nx/nxcomp-3.5.0-2.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~arm"
IUSE=""

DEPEND="media-libs/libpng"
RDEPEND="${DEPEND}"

src_unpack() {
    unpack ${A}
    mv ${PN} "${S}"
}

src_prepare() {
	epatch "${FILESDIR}"/${P}-png.patch 
}

src_install() {
	install -p -m 0755 "${S}"/libXcomp.so*

	insinto /usr/lib
	doins libXcomp.so*

	insinto /usr/include
	doins *.h
}
