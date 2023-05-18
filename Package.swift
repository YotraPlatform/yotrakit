// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.12"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/artefacts/\(version)/\(moduleName).zip"
let checksum = "13b022f7e6d32e1924299fc79c270ffc64dad03058143a24dc0309f838c51499"

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
