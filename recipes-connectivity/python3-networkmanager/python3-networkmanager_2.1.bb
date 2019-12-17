inherit setuptools3

SUMMARY = "Python 3 dbus networkmanager wrapper"
SECTION = "devel/scripts"
LICENSE = "Zlib"
LIC_FILES_CHKSUM = "file://COPYING;md5=8d8bac174bf8422b151200e6cc78ebe4"

RDEPENDS_${PN} = "python3-dbus" 

SRC_URI = "git://github.com/seveas/python-networkmanager"
SRCREV = "ab5f7ae93b8e9a03147d63091177913b2107b3d9"


S = "${WORKDIR}/git/"
