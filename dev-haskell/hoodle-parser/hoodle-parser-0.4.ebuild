# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Hoodle file parser"
HOMEPAGE="http://ianwookim.org/hoodle"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10:=[profile?]
	>=dev-haskell/either-3.1:=[profile?]
	>=dev-haskell/hoodle-types-0.4:=[profile?]
	>=dev-haskell/lens-2.5:=[profile?]
	>dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/strict-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/xournal-types-0.5.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
