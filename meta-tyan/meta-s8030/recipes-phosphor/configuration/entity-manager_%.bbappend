FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

SRC_URI:append = " \
                        file://s8030gm2ne-baseboard.json \
                        file://smicro-psu.json \
                "

do_install:append() {
     # For now we need to test these without forking entity manager
     rm -f ${D}${datadir}/entity-manager/configurations/tyan/*.json
     install -d ${D}${datadir}/entity-manager/configurations
     install -m 0444 ${UNPACKDIR}/s8030gm2ne-baseboard.json ${D}${datadir}/entity-manager/configurations
     install -m 0444 ${UNPACKDIR}/smicro-psu.json ${D}${datadir}/entity-manager/configurations
}
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
