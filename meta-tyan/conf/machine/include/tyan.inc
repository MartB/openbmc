MACHINE_FEATURES += "\
        obmc-bmc-state-mgmt \
        obmc-chassis-state-mgmt \
        obmc-host-ipmi \
        obmc-host-state-mgmt \
        obmc-phosphor-chassis-mgmt \
        obmc-phosphor-fan-mgmt \
        obmc-phosphor-flash-mgmt \
        "

VIRTUAL-RUNTIME_obmc-inventory-manager = "entity-manager"
PREFERRED_PROVIDER_virtual/obmc-inventory-data = "entity-manager"

VIRTUAL-RUNTIME_obmc-host-state-manager ?= "x86-power-control"
VIRTUAL-RUNTIME_obmc-chassis-state-manager ?= "x86-power-control"

PREFERRED_PROVIDER_virtual/obmc-chassis-mgmt = "packagegroup-tyan-apps"
PREFERRED_PROVIDER_virtual/obmc-fan-mgmt = "packagegroup-tyan-apps"
PREFERRED_PROVIDER_virtual/obmc-flash-mgmt = "packagegroup-tyan-apps"
PREFERRED_PROVIDER_virtual/obmc-host-ipmi-hw ?= "phosphor-ipmi-kcs"
PREFERRED_PROVIDER_virtual/obmc-system-mgmt = "packagegroup-tyan-apps"
