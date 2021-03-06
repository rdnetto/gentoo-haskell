# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Executable for hoodle"
HOMEPAGE="http://ianwookim.org/hoodle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="dyre"

RDEPEND=">=dev-haskell/cmdargs-0.7:=[profile?]
	>=dev-haskell/configurator-0.2:=[profile?]
	>=dev-haskell/hoodle-core-0.16:=[profile?] <dev-haskell/hoodle-core-0.17:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	dyre? ( >=dev-haskell/dyre-0.8.11:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dyre dyre)
}
