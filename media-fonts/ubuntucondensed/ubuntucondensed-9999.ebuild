# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font git-r3

DESCRIPTION="Google Fonts Ubuntu Condensed font"
HOMEPAGE="https://fonts.google.com/specimen/Ubuntu+Condensed"
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
	FONT_S="${WORKDIR}/${P}/ufl/ubuntucondensed" font_src_install
}
