// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let cxxSettings: [CXXSetting] = [
    .headerSearchPath("."),
    .headerSearchPath("include"),
]

let package = Package(
    name: "CWasmer",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CWasmer",
            targets: ["CWasmer"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CWasmer",
            dependencies: [],
            cxxSettings: cxxSettings
        ),
        .testTarget(
            name: "CWasmerTests",
            dependencies: ["CWasmer"]),
    ],
    cxxLanguageStandard: .cxx20
)
