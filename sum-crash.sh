#!/usr/bin/env bash

set -ex

! papermill -k 3.8.2 sum-test-matrix-crash.ipynb crashed-matrix.ipynb
! papermill -k 3.8.2 sum-test-sparse-crash.ipynb crashed-sparse.ipynb
echo 'crashed, as expected!'
jupyter notebook --no-browser --ip=0.0.0.0 "$@"
