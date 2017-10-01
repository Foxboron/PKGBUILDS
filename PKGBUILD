# Maintainer: Maikel Wever <maikelwever@gmail.com>
# Contributor: Morten Linderud <morten@linderud.pw>

pkgname=pipenv
pkgver=8.2.6
pkgrel=1
pkgdesc="Sacred Marriage of Pipfile, Pip, & Virtualenv."
url="https://docs.pipenv.org"
arch=('any')
license=('MIT')
conflicts=('python-pipenv')
depends=('python' 'python-pip' 'python-pew'
         'python-virtualenv' 'flake8' 'python-requests'
         'python-urllib3')
makedepends=('python-setuptools')
source=("${pkgname}-${pkgver}.tar.gz::https://github.com/kennethreitz/pipenv/archive/v${pkgver}.tar.gz")
sha256sums=('89f1731e91a75b2501eccaedd72f105d8b36492e076034d1a694620bec96c902')

build(){
  cd "$srcdir/pipenv-$pkgver"
  python setup.py build
}

package() {
  cd "$srcdir/pipenv-$pkgver"
  python setup.py install --root="$pkgdir/" --optimize=1 --skip-build
  install -Dm 644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}

# vim:set ts=2 sw=2 et:
