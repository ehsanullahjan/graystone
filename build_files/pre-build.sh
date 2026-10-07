#!/bin/bash

set -euxo pipefail

# Enable dnf config-manager
dnf -y install 'dnf5-command(config-manager)'

# Install pre-reqs
dnf -y install rsync

# Copy custom configs
rsync -rvK /ctx/system_files/pre-build/ /
