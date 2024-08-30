#!/bin/bash

PKG_NAME="fcitx5-table-other"

rm $PKG_NAME*
rm .PKGINFO
rm -rf ./fakeroot
rm -rf ./usr

mkdir ./fakeroot
cp -av ./debian ./fakeroot/debian

wget -c "https://archlinux.org/packages/extra/any/${PKG_NAME}/download" -O "${PKG_NAME}.pkg.tar.zst"
tar -I zstd -xf $PKG_NAME.pkg.tar.zst usr .PKGINFO
PKG_VERSION=$(awk '/^pkgver/ {print $3}' .PKGINFO)
cp -av ./usr ./fakeroot/usr

cd ./fakeroot
dch --create --package "${PKG_NAME}" -v "${PKG_VERSION}" -D "stable" -u "low" "Latest Release" -c debian/changelog
debuild --no-tgz-check -i -us -uc
# debuild --no-tgz-check --no-lintian -i -us -uc