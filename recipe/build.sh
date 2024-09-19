#!/bin/bash

set -e
set -x

export LDFLAGS="$LDFLAGS -L$SP_DIR/pyarrow"
export UNIXODBC_INCLUDE_DIR=$CONDA_PREFIX/include
python -m pip install -vv . --config-settings=setup-args="--pyarrow-include-dir=$SP_DIR/pyarrow/include"
