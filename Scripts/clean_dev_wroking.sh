#!/usr/bin/env bash







function clean() {
    rm -rf .wasmer_prebuild
    rm -rf ./Sources/CWasmer/bin
    rm -rf ./Sources/CWasmer/include
    rm -rf ./Sources/CWasmer/lib
}



echo "WARNING: THIS SCRIPT IS NOW UNDER CONSTRUCTION"
clean
