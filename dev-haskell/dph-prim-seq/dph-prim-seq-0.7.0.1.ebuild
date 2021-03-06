# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Data Parallel Haskell segmented arrays. (sequential implementation)"
HOMEPAGE="http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/dph-base-0.7:=[profile?] <dev-haskell/dph-base-0.8:=[profile?]
	>=dev-haskell/dph-prim-interface-0.7:=[profile?] <dev-haskell/dph-prim-interface-0.8:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?] <dev-haskell/primitive-0.6:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-1.1:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"
