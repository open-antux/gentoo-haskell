# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999
#hackport: flags: -all_extensions,+with_threaded,+with_utf8,-with_iwlib,with_alsa:alsa,with_xft:xft,with_datezone:timezone,with_dbus:dbus,with_mpd:mpd,+with_inotify,with_mpris:mpris,with_xpm:xpm,with_nl80211:wifi

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A Minimalistic Text Based Status Bar"
HOMEPAGE="https://xmobar.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="alsa dbus mpd mpris +rtsopts timezone uvmeter +weather wifi xft xpm"

RDEPEND="dev-haskell/async:=[profile?]
	>=dev-haskell/extensible-exceptions-0.1:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	>=dev-haskell/hinotify-0.3:=[profile?] <dev-haskell/hinotify-0.5:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/parsec-numbers-0.1.0:=[profile?]
	dev-haskell/regex-compat:=[profile?]
	>=dev-haskell/stm-2.3:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/utf8-string-0.3:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-haskell/x11-1.6.1:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	x11-libs/libXrandr
	x11-libs/libXrender
	alsa? ( >=dev-haskell/alsa-core-0.5:=[profile?] <dev-haskell/alsa-core-0.6:=[profile?]
		>=dev-haskell/alsa-mixer-0.3:=[profile?] <dev-haskell/alsa-mixer-0.4:=[profile?] )
	dbus? ( >=dev-haskell/dbus-1:=[profile?]
		weather? ( dev-haskell/http-client-tls:=[profile?]
				dev-haskell/http-conduit:=[profile?]
				dev-haskell/http-types:=[profile?] )
		xpm? ( x11-libs/libXpm ) )
	!dbus? ( !uvmeter? ( weather? ( !xpm? ( dev-haskell/http-client-tls:=[profile?]
						dev-haskell/http-conduit:=[profile?]
						dev-haskell/http-types:=[profile?] ) ) ) )
	mpd? ( >=dev-haskell/libmpd-0.9.2.0:=[profile?] )
	mpris? ( >=dev-haskell/dbus-1:=[profile?]
			!dbus? ( !uvmeter? ( weather? ( dev-haskell/http-client-tls:=[profile?]
							dev-haskell/http-conduit:=[profile?]
							dev-haskell/http-types:=[profile?] ) ) )
			xpm? ( x11-libs/libXpm
			weather? ( dev-haskell/http-client-tls:=[profile?]
					dev-haskell/http-conduit:=[profile?]
					dev-haskell/http-types:=[profile?] ) )
			!xpm? ( uvmeter? ( weather? ( dev-haskell/http-client-tls:=[profile?] ) ) ) )
	!mpris? ( !dbus? ( weather? ( dev-haskell/http-client-tls:=[profile?] )
				xpm? ( x11-libs/libXpm
					weather? ( dev-haskell/http-conduit:=[profile?]
						dev-haskell/http-types:=[profile?] ) ) ) )
	timezone? ( >=dev-haskell/timezone-olson-0.2:=[profile?] <dev-haskell/timezone-olson-0.3:=[profile?]
			>=dev-haskell/timezone-series-0.1:=[profile?] <dev-haskell/timezone-series-0.2:=[profile?] )
	uvmeter? ( dev-haskell/http-conduit:=[profile?]
			dev-haskell/http-types:=[profile?] )
	wifi? ( >=dev-haskell/cereal-0.5.8.1:=[profile?]
		>=dev-haskell/netlink-1.1.1.0:=[profile?] )
	xft? ( >=dev-haskell/x11-xft-0.2:=[profile?] <dev-haskell/x11-xft-0.4:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-2 <dev-haskell/hspec-3
		dev-haskell/temporary )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-all_extensions \
		$(cabal_flag alsa with_alsa) \
		$(cabal_flag timezone with_datezone) \
		$(cabal_flag dbus with_dbus) \
		--flag=with_inotify \
		--flag=-with_iwlib \
		$(cabal_flag mpd with_mpd) \
		$(cabal_flag mpris with_mpris) \
		$(cabal_flag wifi with_nl80211) \
		$(cabal_flag rtsopts with_rtsopts) \
		--flag=with_threaded \
		--flag=with_utf8 \
		$(cabal_flag uvmeter with_uvmeter) \
		$(cabal_flag weather with_weather) \
		$(cabal_flag xft with_xft) \
		$(cabal_flag xpm with_xpm)
}

src_install() {
	cabal_src_install

#   dodoc readme.md
	dodoc examples/xmobar.config examples/xmobar.hs changelog.md
}
