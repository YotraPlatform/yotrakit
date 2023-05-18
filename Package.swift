// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.11"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/artefacts/\(version)/\(moduleName).zip"
let checksum = "44bf31394779759f986bcf9ae256f58f0439da8f9938f01360d8bfaea972c5c8"

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
