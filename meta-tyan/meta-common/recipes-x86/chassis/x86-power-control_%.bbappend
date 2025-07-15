FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/${MACHINE}:"

SRC_URI:append:s7106 = " file://power-config-host0.json"
SRC_URI:append:s8036 = " file://power-config-host0.json"

do_install:append:s7106() {
    install -m 0755 -d ${D}/${datadir}/${PN}
    install -m 0644 -D ${UNPACKDIR}/power-config-host0.json ${D}/${datadir}/${PN}/
}

do_install:append:s8036() {
    install -m 0755 -d ${D}/${datadir}/${PN}
    install -m 0644 -D ${UNPACKDIR}/power-config-host0.json ${D}/${datadir}/${PN}/
}
