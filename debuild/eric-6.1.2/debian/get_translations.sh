#!/bin/sh
VERSION=$(dpkg-parsechangelog | sed -rne 's,^Version: ([^-]+).*,\1,p')
echo $VERSION
cd debian
wget http://sourceforge.net/projects/eric-ide/files/eric6/stable/${VERSION}/eric6-i18n-cs-${VERSION}.tar.gz/download
wget http://sourceforge.net/projects/eric-ide/files/eric6/stable/${VERSION}/eric6-i18n-de-${VERSION}.tar.gz/download
wget http://sourceforge.net/projects/eric-ide/files/eric6/stable/${VERSION}/eric6-i18n-es-${VERSION}.tar.gz/download
wget http://sourceforge.net/projects/eric-ide/files/eric6/stable/${VERSION}/eric6-i18n-fr-${VERSION}.tar.gz/download
wget http://sourceforge.net/projects/eric-ide/files/eric6/stable/${VERSION}/eric6-i18n-it-${VERSION}.tar.gz/download
wget http://sourceforge.net/projects/eric-ide/files/eric6/stable/${VERSION}/eric6-i18n-ru-${VERSION}.tar.gz/download
wget http://sourceforge.net/projects/eric-ide/files/eric6/stable/${VERSION}/eric6-i18n-tr-${VERSION}.tar.gz/download
wget http://sourceforge.net/projects/eric-ide/files/eric6/stable/${VERSION}/eric6-i18n-zh_CN-${VERSION}.tar.gz/download
for name in eric6-i18n-*.tar.gz ; do tar xzf $name; done
mv -f eric6-${VERSION}/eric/i18n/eric6_*.ts i18n/
rm -rf eric6-${VERSION}
rm -f eric6-i18n-*.tar.gz*
cd ..
