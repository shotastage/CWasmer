.PHONY:
setup:
	brew update && brew upgrade
	brew install mint
	mint install unsignedapps/swift-create-xcframework

.PHONY:
build-from-precompiled:
	curl -sLJO https://github.com/wasmerio/wasmer/releases/download/v3.1.0/wasmer-darwin-amd64.tar.gz
	tar -zxvf wasmer-darwin-amd64.tar.gz
	rm -rf ./bin/
	rm -rf ./include/
	rm -rf ./lib/
	rm wasmer-darwin-amd64.tar.gz
	rm artifacts


.PHONY:
build:
mint run swift-create-xcframework --clean CWasmer --output artifacts --platform ios
