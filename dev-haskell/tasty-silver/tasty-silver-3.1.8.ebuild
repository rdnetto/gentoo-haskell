# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A fancy test runner, including support for golden tests"
HOMEPAGE="https://github.com/phile314/tasty-silver"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ansi-terminal-0.6.2.1:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	>=dev-haskell/process-extras-0.2:=[profile?]
	>=dev-haskell/regex-tdfa-1.2.0:=[profile?]
	>=dev-haskell/stm-2.4.2:=[profile?]
	dev-haskell/tagged:=[profile?]
	>=dev-haskell/tasty-0.8:=[profile?]
	dev-haskell/temporary:=[profile?]
	>=dev-haskell/text-0.11.0.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/tasty-hunit
		>=dev-haskell/transformers-0.3 )
"