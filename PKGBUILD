
# Maintainer: Morten Linderud <morten@linderud.pw> 
# Contributor: mmm
# Contributor: Thomas Dziedzic < gostrc at gmail >
# Contributor: Geoffroy Carrier <geoffroy.carrier@koon.fr>
# Contributor: Stefan Husmann <stefan-husmannt-online.de>

pkgname=protege
pkgver=4.3.0.304
_pkgver=4.3.0-304
_ver=4.3
_veralt=4.3
pkgrel=2
pkgdesc='Free, open source ontology editor and knowledge-base framework'
arch=('any')
url='http://protege.stanford.edu/'
license=('MPL')
depends=('java-runtime' 'graphviz')
source=("http://protege.stanford.edu/download/protege/$_ver/zip/protege-${_pkgver}.zip"
        "${pkgname}.sh"
        "http://apache.uib.no//felix/org.apache.felix.main.distribution-5.2.0.tar.gz")

sha256sums=('f7b2d5be3c9837ddb9c5e8676810b18d07460f6428905cfd5a148496f3fc4f16'
            'd8b673954300b73c1badd85283489a5791ae8cdb3cd266fdc5753898b47926a5'
            '2d26497cd2cf78bbd802df29e18238e9c15d6282c13264bcedfe223ce6dcca81')

package() {
  mv felix-framework-5.2.0/bin/felix.jar Protege_$_veralt/bin/felix.jar

  cd Protege_$_veralt

  # remove windows crud
  rm run.bat

  install -d ${pkgdir}/usr/share/java/${pkgname}
  cp -r * ${pkgdir}/usr/share/java/${pkgname}

  install -d ${pkgdir}/usr/bin
  install -D ${srcdir}/protege.sh ${pkgdir}/usr/bin/protege
}
