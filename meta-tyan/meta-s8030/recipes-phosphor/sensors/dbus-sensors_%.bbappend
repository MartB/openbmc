FILESEXTRAPATHS:prepend := "${THISDIR}/dbus-sensors:"

PACKAGECONFIG:s8030 = "\
    hwmontempsensor \
    fansensor \
    psusensor \
    adcsensor \
    "
