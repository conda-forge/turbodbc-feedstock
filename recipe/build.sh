#!/bin/bash

set -euxo pipefail

python -c 'import pyarrow as pa; print(pa.get_include())'
$PYTHON -c 'import pyarrow as pa; print(pa.get_include())'

export LDFLAGS="$LDFLAGS -L$SP_DIR/pyarrow"
export UNIXODBC_INCLUDE_DIR=$CONDA_PREFIX/include
python -m pip install -vv .
