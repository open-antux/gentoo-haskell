# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Build system library, like Make, but more accurate dependencies"
HOMEPAGE="https://shakebuild.com"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cloud embed-files portable"

RESTRICT=test # something fails

RDEPEND=">=dev-haskell/extra-1.6.19:=[profile?]
	>=dev-haskell/file-embed-0.0.11:=[profile?]
	dev-haskell/filepattern:=[profile?]
	>=dev-haskell/hashable-1.1.2.3:=[profile?]
	>=dev-haskell/heaps-0.3.6.1:=[profile?]
	dev-haskell/js-dgtable:=[profile?]
	dev-haskell/js-flot:=[profile?]
	dev-haskell/js-jquery:=[profile?]
	dev-haskell/primitive:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?]
	>=dev-lang/ghc-8.0.2:=
	cloud? ( dev-haskell/network:=[profile?]
			dev-haskell/network-uri:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.2.0
	test? ( >=dev-haskell/quickcheck-2.0 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cloud cloud) \
		$(cabal_flag embed-files embed-files) \
		$(cabal_flag portable portable)
}
