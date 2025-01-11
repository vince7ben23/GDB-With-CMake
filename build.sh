#!/bin/bash

debug=$1

mkdir -p build && cd ./build

if [[ -n ${debug} ]] && [[ ${debug} == "-g" ]]; then
    echo "build with debug mode..."
    cmake -DCMAKE_BUILD_TYPE=Debug ..
else
    echo "build..."
    cmake ..
fi

cmake --build .