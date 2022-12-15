#!/usr/bin/env bash


function prepare() {
    mkdir .wasmer_prebuild
    cd .wasmer_prebuild
}

function place() {
    # mv ./bin/ ../Sources/CWasmer/
    mv ./include/ ../Sources/CWasmer/
    mv ./lib/ ../Sources/CWasmer/
}

function clean() {
    cd ..
    rm -rf .wasmer_prebuild
}

echo Now under construction...
prepare
curl -sLJO https://github.com/wasmerio/wasmer/releases/download/v3.1.0/wasmer-darwin-amd64.tar.gz
tar -zxvf wasmer-darwin-amd64.tar.gz

place
clean
