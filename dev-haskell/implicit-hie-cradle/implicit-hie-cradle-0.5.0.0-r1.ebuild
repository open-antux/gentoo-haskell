# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Auto generate hie-bios cradles"
HOMEPAGE="https://github.com/Avi-D-coder/implicit-hie-cradle#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-haskell/base16-bytestring:=[profile?]
	>=dev-haskell/extra-1.6.14:=[profile?] <dev-haskell/extra-1.8:=[profile?]
	>=dev-haskell/hie-bios-0.7.0:=[profile?]
	dev-haskell/hslogger:=[profile?]
	>=dev-haskell/implicit-hie-0.1.2.6:=[profile?] <dev-haskell/implicit-hie-1:=[profile?]
	|| ( dev-lang/ghc ( >=dev-haskell/process-1.6.1[profile?] <dev-haskell/process-1.7[profile?] ) )
	dev-haskell/temporary:=[profile?]
	dev-haskell/unix-compat:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vector:=[profile?]
	dev-haskell/yaml:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
