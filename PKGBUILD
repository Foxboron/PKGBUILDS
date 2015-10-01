# Contributor: Army
# Maintainer: Moritz Maxeiner <moritz@ucworks.org>
# Co-Maintainer: Stefan-Husmann@t-online.de

pkgname=dunst-git
_gitname=dunst
pkgver=1.1.0.28.gf601312.633
pkgrel=1
pkgdesc="a lightweight replacement for the notification-daemons provided by most desktop environments"
arch=('i686' 'x86_64')
url="http://www.knopwob.org/dunst"
license=('BSD')
depends=('libxinerama' 'libxss' 'pango' 'libnotify')
if [ ! -e ${SRCDEST}/config.h ]; then
  depends+=('libxdg-basedir')
fi
makedepends=('git' 'perl')
provides=("dunst" 'notification-daemon')
conflicts=("dunst")
source=('git://github.com/knopwob/dunst.git')
md5sums=('SKIP')
options=('!makeflags')

pkgver() {
  cd ${srcdir}/${_gitname}
  echo $(git describe --tags | sed 's+v++g'|sed 's+-+.+g').$(git rev-list --count HEAD)
}

prepare() {
  cd ${srcdir}/${_gitname}
  [ -f $srcdir/${_gitname}/config.h ] && rm $srcdir/${_gitname}/config.h
  if [ -e ${srcdir}/config.h ]; then
    msg "Using custom config.h"
    cp ${srcdir}/config.h .
    touch config.h
  fi
}

build() {
  cd ${srcdir}/${_gitname}
  if [ -e ${SRCDEST}/config.h ]; then
    CFLAGS=-DSTATIC_CONFIG make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11
	CFLAGS=-DSTATIC_CONFIG make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11 dunstify
  else
    make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11
	make X11INC=/usr/include/X11 X11LIB=/usr/lib/X11 dunstify
  fi
}

package() {
  cd ${srcdir}/${_gitname}
  if [ -e ${SRCDEST}/config.h ]; then
    CFLAGS=-DSTATIC_CONFIG make DESTDIR="${pkgdir}" PREFIX=/usr install
  else
    make DESTDIR="${pkgdir}" PREFIX=/usr install
  fi

  install -Dm755 dunstify "${pkgdir}/usr/bin/dunstify"

  install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
