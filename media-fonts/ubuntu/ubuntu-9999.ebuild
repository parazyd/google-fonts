# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font git-r3

DESCRIPTION="Google Fonts Ubuntu font"
HOMEPAGE="https://fonts.google.com/specimen/Ubuntu"
EGIT_REPO_URI="https://github.com/google/fonts"

LICENSE="UbuntuFontLicense-1.0"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

RESTRICT="binchecks strip"
FONT_SUFFIX="ttf"

src_install() {
	FONT_S="${WORKDIR}/${P}/ufl/ubuntu" font_src_install
}
