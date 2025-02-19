# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="\"Conversion\" instances for the \"bytestring\" library"
HOMEPAGE="https://github.com/nikita-volkov/conversion-bytestring"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-prelude-0.1.19:=[profile?] <dev-haskell/base-prelude-2:=[profile?]
	>=dev-haskell/conversion-1:=[profile?] <dev-haskell/conversion-2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
