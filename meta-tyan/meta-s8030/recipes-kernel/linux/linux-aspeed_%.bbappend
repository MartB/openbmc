FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append = " \
  file://s8030.cfg \
  file://s8030sensors.cfg \
  "