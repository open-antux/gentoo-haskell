# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999
#hackport: flags: -buildtests,+mintime15,+splitbase

CABAL_PN="HDBC-postgresql"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

# error: Connection.hsc:34:10: fatal error: pg_config.h: No such file or directory
RESTRICT="test" # Missing files

DESCRIPTION="PostgreSQL driver for HDBC"
HOMEPAGE="https://github.com/hdbc/hdbc-postgresql"

LICENSE="BSD"

# For some reason, the slot was previously set to 2. Changing this could cause
# problems as haskell-updater tries to reinstall a version of the same slot.
# This should be changed at some point, but currently the version in ::gentoo
# is also set to 2.
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-db/postgresql-7
	dev-haskell/convertible:=[profile?]
	>=dev-haskell/hdbc-2.2.0:2=[profile?]
	dev-haskell/old-time:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtests \
		--flag=mintime15 \
		--flag=splitbase
}
