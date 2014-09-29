# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="OpenNX is an open source drop in replacement for NoMachine's NX client"
HOMEPAGE="http://opennx.net"
SRC_URI="http://sourceforge.net/projects/${PN}/files/${PN}/CI-source/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~arm ~amd64 ~x86"
IUSE=""

DEPEND="x11-libs/wxGTK"
RDEPEND="${DEPEND}"

src_unpack() {
    unpack ${A}
    mv ${PN}-* "${S}"
}
