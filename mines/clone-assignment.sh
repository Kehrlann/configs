#!/bin/bash

set -euo pipefail

TARGET=$1

mkdir $TARGET || true

cat students.txt | xargs -I% git clone git@github.com:mines-ap-dgarnier/$TARGET-% $TARGET/%
