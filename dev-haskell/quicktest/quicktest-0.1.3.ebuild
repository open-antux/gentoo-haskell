# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="A reflective batch tester for Haskell."
HOMEPAGE="https://github.com/davidsiegel/quicktest"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
	dev-haskell/mtl
	>=dev-lang/ghc-6.10.4
"

src_prepare() {
	cabal_chdeps \
		'haskell98,' 'base,'
}
