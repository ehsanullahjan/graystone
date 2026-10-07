#!/bin/bash

set -euxo pipefail

dnf -y install borgbackup ddcutil dbus-daemon pciutils lm_sensors lshw sysstat
