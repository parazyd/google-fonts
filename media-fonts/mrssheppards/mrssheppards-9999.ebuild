# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font git-r3

DESCRIPTION="Google Fonts Mrs Sheppards font"
HOMEPAGE="https://fonts.google.com/specimen/Mrs+Sheppards"
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
	FONT_S="${WORKDIR}/${P}/ofl/mrssheppards" font_src_install
}
