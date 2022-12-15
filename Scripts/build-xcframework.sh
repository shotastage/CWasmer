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
    rm -rf ./Sources/CWasmer/bin
    rm -rf ./Sources/CWasmer/include
    rm -rf ./Sources/CWasmer/lib
    rm -rf .build/
}

function build_framework() {
    xcodebuild archive \
        -project CWasmer.xcodeproj \
        -scheme CWasmer \
        -destination "$1" \
        -archivePath "$2" \
        SKIP_INSTALL=NO \
        BUILD_LIBRARY_FOR_DISTRIBUTION=YES
}

echo Now under construction...
prepare
curl -sLJO https://github.com/wasmerio/wasmer/releases/download/v3.1.0/wasmer-darwin-amd64.tar.gz
tar -zxvf wasmer-darwin-amd64.tar.gz

place
mint run swift-create-xcframework --clean CWasmer --output artifacts --platform ios --platform macos --platform tvos --platform watchos
clean
