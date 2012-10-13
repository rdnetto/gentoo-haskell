# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="The Haskell-Scriptable Editor"
HOMEPAGE="http://haskell.org/haskellwiki/Yi"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gnome gtk vty"

RDEPEND="=dev-haskell/binary-0.5*[profile?]
		>=dev-haskell/cabal-1.10[profile?]
		<dev-haskell/cabal-1.17[profile?]
		>=dev-haskell/cautious-file-1.0.1[profile?]
		=dev-haskell/concrete-typerep-0.1*[profile?]
		>=dev-haskell/data-accessor-0.2.1.4[profile?]
		<dev-haskell/data-accessor-0.3[profile?]
		=dev-haskell/data-accessor-mtl-0.2*[profile?]
		>=dev-haskell/data-accessor-template-0.2.1.3[profile?]
		<dev-haskell/data-accessor-template-0.2.2[profile?]
		>=dev-haskell/derive-2.4[profile?]
		<dev-haskell/derive-2.7[profile?]
		=dev-haskell/diff-0.1*[profile?]
		>=dev-haskell/dlist-0.4.1[profile?]
		>=dev-haskell/dyre-0.7[profile?]
		<dev-haskell/fingertree-0.1[profile?]
		=dev-haskell/ghc-paths-0.1*[profile?]
		<dev-haskell/hashable-1.2[profile?]
		>dev-haskell/hint-0.3.1[profile?]
		>=dev-haskell/mtl-2[profile?]
		>=dev-haskell/pointedlist-0.3.5[profile?]
		<dev-haskell/pointedlist-0.4[profile?]
		>=dev-haskell/puremd5-0.2.3[profile?]
		>=dev-haskell/quickcheck-2.1.0.2[profile?]
		dev-haskell/random[profile?]
		=dev-haskell/regex-base-0.93*[profile?]
		=dev-haskell/regex-tdfa-1.1*[profile?]
		>=dev-haskell/rosezipper-0.1[profile?]
		<dev-haskell/rosezipper-0.3[profile?]
		>=dev-haskell/split-0.1[profile?]
		<dev-haskell/split-0.3[profile?]
		>=dev-haskell/time-1.1[profile?]
		<dev-haskell/time-1.5[profile?]
		dev-haskell/uniplate[profile?]
		>=dev-haskell/unix-compat-0.1[profile?]
		<dev-haskell/unix-compat-0.4[profile?]
		>=dev-haskell/unordered-containers-0.1.3[profile?]
		<dev-haskell/unordered-containers-0.3[profile?]
		>=dev-haskell/utf8-string-0.3.1[profile?]
		>=dev-haskell/vty-4.7.0.0[profile?]
		<dev-haskell/vty-5[profile?]
		>=dev-lang/ghc-6.12.1
		vty? ( =dev-haskell/vty-4* )
		gtk? ( =dev-haskell/glib-0.12*
			   =dev-haskell/gtk-0.12*
			   gnome? ( =dev-haskell/gconf-0.12* ) )"
# we ask >=dev-haskell/mtl-2 as
# uses instances provided by it data-accessor-mtl
DEPEND="${RDEPEND}
		>=dev-haskell/alex-3
		>=dev-haskell/cabal-1.10"

src_prepare() {
	epatch "${FILESDIR}/${PN}-0.6.6.0-ghc-7.6.patch"
	if has_version "<dev-lang/ghc-7.0.1"; then
		if use gtk; then
			die "yi removed support for 6.12.3, backport does not work with gtk use flag"
		fi
		epatch "${FILESDIR}/${PN}-0.6.6.0-backport-to-ghc-6.12.3.patch"
	fi
	epatch "${FILESDIR}/${PN}-0.6.5.0-fix-haddock-2.10.0.patch"
}

src_configure() {
	cabal_src_configure \
		--flags=-testing \
		$(cabal_flag gtk pango) \
		$(cabal_flag gnome) \
		$(cabal_flag vty)

	use gtk || use vty || ewarn "${PN} requires either USE=gtk or USE=vty to build a user interface."
}
