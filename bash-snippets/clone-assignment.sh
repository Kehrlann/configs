#!/usr/bin/env bash

set -euo pipefail

TARGET=$1

mkdir $TARGET || true

cat students.txt | xargs -P 0 -I% git clone git@github.com:mines-ap-dgarnier/$TARGET-% $TARGET/%
