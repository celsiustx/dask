#!/usr/bin/env bash

set -ex

echo "args: $@"
! papermill -k 3.8.2 sum-test.ipynb crashed.ipynb
echo 'crashed, as expected!'
jupyter notebook --no-browser --ip=0.0.0.0 "$@"
