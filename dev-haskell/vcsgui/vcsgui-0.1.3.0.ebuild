# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="GUI library for source code management systems"
HOMEPAGE="https://github.com/forste/haskellVCSGUI"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+gtk3"

RDEPEND=">=dev-haskell/mtl-2.0.1.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/vcswrapper-0.1.1:=[profile?] <dev-haskell/vcswrapper-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	gtk3? ( >=dev-haskell/gtk3-0.13.0.0:=[profile?] <dev-haskell/gtk3-0.15:=[profile?] )
	!gtk3? ( >=dev-haskell/gtk-0.13.0.0:=[profile?] <dev-haskell/gtk-0.14:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

src_prepare() {
	cabal_chdeps \
		'base >=4.0.0.0 && <4.9' 'base >=4.0.0.0' \
		'process >=1.0.1.5 && <1.3' 'process >=1.0.1.5'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag gtk3 gtk3)
}
