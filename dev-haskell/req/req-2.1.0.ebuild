# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Easy-to-use, type-safe, expandable, high-level HTTP library"
HOMEPAGE="https://github.com/mrkkrp/req"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.9:=[profile?] <dev-haskell/aeson-1.5:=[profile?]
	>=dev-haskell/authenticate-oauth-1.5:=[profile?] <dev-haskell/authenticate-oauth-1.7:=[profile?]
	>=dev-haskell/blaze-builder-0.3:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/case-insensitive-0.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/connection-0.2.2:=[profile?] <dev-haskell/connection-0.4:=[profile?]
	>=dev-haskell/http-api-data-0.2:=[profile?] <dev-haskell/http-api-data-0.5:=[profile?]
	>=dev-haskell/http-client-0.5:=[profile?] <dev-haskell/http-client-0.7:=[profile?]
	>=dev-haskell/http-client-tls-0.3.2:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-10.0:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-3.0:=[profile?]
	>=dev-haskell/retry-0.8:=[profile?] <dev-haskell/retry-0.9:=[profile?]
	>=dev-haskell/text-0.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	dev-haskell/transformers-base:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/hspec-core-2.0 <dev-haskell/hspec-core-3.0
		>=dev-haskell/quickcheck-2.7 <dev-haskell/quickcheck-3.0
		>=dev-haskell/unordered-containers-0.2.5 <dev-haskell/unordered-containers-0.2.11 )
"

src_prepare() {
	default

	cabal_chdeps \
		'time             >= 1.2    && < 1.9' 'time             >= 1.2'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
