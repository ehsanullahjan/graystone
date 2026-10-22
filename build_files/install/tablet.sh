#!/bin/bash

set -euxo pipefail

dnf -y install iio-sensor-proxy
systemctl enable iio-sensor-proxy.service
