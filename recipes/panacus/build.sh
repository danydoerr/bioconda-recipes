#!/bin/bash -euo

mkdir -p $PREFIX/bin

RUST_BACKTRACE=1
cargo install --no-track --verbose --root "${PREFIX}" --path .

cp $BUILD_PREFIX/.cargo/bin/panacus $PREFIX/bin 
cp scripts/panacus-visualize.py $PREFIX/bin/panacus-visualize
