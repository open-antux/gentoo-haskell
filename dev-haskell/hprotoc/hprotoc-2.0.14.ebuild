# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parse Google Protocol Buffer specifications"
HOMEPAGE="http://code.haskell.org/protocol-buffers/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+small_base"

RDEPEND="dev-haskell/binary:=[profile?]
		>=dev-haskell/haskell-src-exts-1.7.0:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/parsec:=[profile?]
		~dev-haskell/protocol-buffers-2.0.14:=[profile?]
		~dev-haskell/protocol-buffers-descriptor-2.0.14:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		dev-haskell/alex
		>=dev-haskell/cabal-1.6"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag small_base small_base)
}
