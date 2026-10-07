#!/bin/bash

set -euxo pipefail

/ctx/build_files/pre-build.sh

/ctx/build_files/install/gpu.sh

/ctx/build_files/install/flatpaks.sh

/ctx/build_files/post-build.sh
