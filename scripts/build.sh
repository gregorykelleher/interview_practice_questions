
#!/usr/bin/env bash

set -euo pipefail

PROJECT_DIR=$(cd "$(dirname "$0")/.."; pwd)

cmake \
    -DCMAKE_MODULE_PATH:FILEPATH="$(pwd)" \
    -DCMAKE_BUILD_TYPE="Debug" \
    "$@" \
    "${PROJECT_DIR}"

cmake \
    --build .