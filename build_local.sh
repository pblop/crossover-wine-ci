#!/usr/bin/env bash

set -ex

 export PARALLEL_JOBS=6
 export MACOSX_DEPLOYMENT_TARGET=10.14
 export CROSS_OVER_VERSION=20.0.4

./prepare_env.sh
./get_source.sh
./apply_patches.sh
./build_llvm.sh
./build_clang.sh
./build_wine.sh
