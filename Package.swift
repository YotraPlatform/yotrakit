// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.15"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/main/artefacts/\(version)/\(moduleName).zip"
let checksum = "27f7c19171e4678851486f80ee0cdc29768dae022d0b1e7268a71517b8a72b5b"

let package = Package(
        name: moduleName,
        products: [
            // Products define the executables and libraries a package produces, and make them visible to other artefacts.
            .library(
                    name: moduleName,
                    targets: [moduleName]),
        ],
        targets: [
            .binaryTarget(
                    name: moduleName,
                    url: url,
                    checksum: checksum),
        ]
)
