FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_myqemuarm = "myqemuarm"

KBRANCH_myqemuarm  = "standard/arm-versatile-926ejs"

KERNEL_FEATURES_append_myqemuarm += " cfg/smp.scc"

SRC_URI += "file://myqemuarm-standard.scc \
            file://myqemuarm-user-config.cfg \
            file://myqemuarm-user-features.scc \
           "

# replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
SRCREV_machine_pn-linux-yocto_myqemuarm ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_myqemuarm ?= "${AUTOREV}"
#LINUX_VERSION = "4.4"
