#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
top=${SCRIPT_DIR}/../ 

build_dir=${top}/build
rm -rf ${build_dir}
mkdir ${build_dir}

pushd ${build_dir}
#cmake -DCMAKE_BUILD_TYPE=Debug ../ && make -j`nproc` && make install
cmake -DCMAKE_BUILD_TYPE=Release ../ && make -j`nproc` && make install
popd

