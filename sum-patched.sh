#!/usr/bin/env bash

set -ex

papermill -k 3.8.2 sum-test-matrix.ipynb passed-matrix.ipynb
papermill -k 3.8.2 sum-test-sparse.ipynb passed-sparse.ipynb
jupyter notebook --no-browser --ip=0.0.0.0 "$@"
