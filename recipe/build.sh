#!/bin/bash

set -e
set -x

export UNIXODBC_INCLUDE_DIR=$CONDA_PREFIX/include
python -m pip install -vv .
