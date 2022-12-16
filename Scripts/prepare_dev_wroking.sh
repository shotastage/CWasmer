#!/usr/bin/env bash


function prepare() {
    mkdir .wasmer_prebuild
}

function download() {
    cd .wasmer_prebuild
    curl -sLJO https://github.com/wasmerio/wasmer/releases/download/v3.1.0/wasmer-darwin-amd64.tar.gz
    tar -zxvf wasmer-darwin-amd64.tar.gz
    cd ..
}

function place() {
    mv ./.wasmer_prebuild/include/ ./Sources/CWasmer/
    mv ./.wasmer_prebuild/lib/ ./Sources/CWasmer/
}

function clean() {
    rm -rf .wasmer_prebuild
}



echo "WARNING: THIS SCRIPT IS NOW UNDER CONSTRUCTION"
prepare
download
place
open ./Package.swift
clean
