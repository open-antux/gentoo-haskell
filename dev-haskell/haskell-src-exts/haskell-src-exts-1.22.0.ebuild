# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1
#hackport: flags: +base4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer"
HOMEPAGE="https://github.com/haskell-suite/haskell-src-exts"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="1.22/${PV}"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/semigroups-0.18.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	dev-haskell/happy
	test? ( dev-haskell/mtl
		>=dev-haskell/pretty-show-1.6.16
		>=dev-haskell/smallcheck-1.0
		>=dev-haskell/tasty-0.3
		>=dev-haskell/tasty-golden-2.2.2
		dev-haskell/tasty-smallcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=base4
}
