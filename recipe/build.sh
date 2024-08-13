#!/bin/bash

set -e
set -x

export LDFLAGS="$LDFLAGS -L$SP_DIR/pyarrow"
export UNIXODBC_INCLUDE_DIR=$CONDA_PREFIX/include
python -m pip install -vv .
