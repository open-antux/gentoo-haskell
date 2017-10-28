# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Yesod generators for embedding AngularJs code into yesod-static at compile time"
HOMEPAGE="https://bitbucket.org/wuzzeb/yesod-static-angular"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="example"

RDEPEND=">=dev-haskell/aeson-0.6:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?]
	>=dev-haskell/blaze-markup-0.5:=[profile?]
	>=dev-haskell/data-default-0.5:=[profile?]
	>=dev-haskell/hamlet-1.1:=[profile?]
	>=dev-haskell/language-javascript-0.6:=[profile?] <dev-haskell/language-javascript-0.7:=[profile?]
	>=dev-haskell/mime-types-0.1:=[profile?]
	>=dev-haskell/shakespeare-1.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/yesod-core-1.2:=[profile?] <dev-haskell/yesod-core-1.5:=[profile?]
	>=dev-haskell/yesod-static-1.2.1:=[profile?] <dev-haskell/yesod-static-1.6:=[profile?]
	>=dev-lang/ghc-7.6.1:=
	example? ( >=dev-haskell/yesod-1.2:=[profile?] <dev-haskell/yesod-1.5:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hspec-1.7
		>=dev-haskell/hunit-1.2
		>=dev-haskell/shakespeare-2.0
		>=dev-haskell/yesod-test-1.2 <dev-haskell/yesod-test-1.6 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag example example)
}
