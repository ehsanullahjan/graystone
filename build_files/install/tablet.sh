#!/bin/bash

set -euxo pipefail

dnf -y copr enable ehsanj/coprstones
dnf config-manager setopt copr:copr.fedorainfracloud.org:ehsanj:coprstones.enabled=0

dnf -y --enable-repo=copr:copr.fedorainfracloud.org:ehsanj:coprstones install \
	iio-sensor-proxy \
	wvkbd

systemctl enable iio-sensor-proxy.service
