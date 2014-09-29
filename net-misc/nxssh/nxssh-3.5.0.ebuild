# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="NXSSH"
HOMEPAGE=""
SRC_URI="ftp://ftp.openbsd.com/ports/distfiles/nx/nxssh-3.5.0-2.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~arm"
IUSE=""

DEPEND="net-misc/nxcomp"
RDEPEND="${DEPEND}"

src_unpack() {
    unpack ${A}
    mv ${PN} "${S}"
}

src_install() {
	install -p -m 0755 "${S}"/nxssh

	 insinto /usr/bin
	 doins nxssh
}
