# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="sbvPlugin"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Formally prove properties of Haskell programs using SBV/SMT"
HOMEPAGE="https://github.com/LeventErkok/sbvPlugin"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
	>=dev-haskell/sbv-5.12:=[profile?]
	dev-lang/ghc:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/tasty
		dev-haskell/tasty-golden )
"

S="${WORKDIR}/${MY_P}"
