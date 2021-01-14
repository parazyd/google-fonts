# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font git-r3

DESCRIPTION="Google Fonts Langar font"
HOMEPAGE="https://fonts.google.com/specimen/Langar"
EGIT_REPO_URI="https://github.com/google/fonts"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

RESTRICT="binchecks strip"
FONT_SUFFIX="ttf"

src_install() {
	FONT_S="${WORKDIR}/${P}/ofl/langar" font_src_install
}