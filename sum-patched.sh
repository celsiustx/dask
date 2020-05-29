#!/usr/bin/env bash

set -ex

papermill -k 3.8.2 sum-test.ipynb passed.ipynb
jupyter notebook --no-browser --ip=0.0.0.0 "$@"
