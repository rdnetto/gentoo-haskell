# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="SDL-ttf"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Binding to libSDL_ttf"
HOMEPAGE="http://hackage.haskell.org/package/SDL-ttf"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/sdl:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	media-libs/sdl-ttf
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-0.6.2-fix-double-free.patch
}
