# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Yet Another Binary Serialisation Library (compatibility shim)"
HOMEPAGE="https://hackage.haskell.org/package/binary-serialise-cbor"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/cborg-0.2:=[profile?] <dev-haskell/cborg-0.3:=[profile?]
	>=dev-haskell/serialise-0.2:=[profile?] <dev-haskell/serialise-0.3:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
