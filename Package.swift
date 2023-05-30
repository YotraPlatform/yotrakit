// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.24"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/main/artefacts/\(version)/\(moduleName).zip"
let checksum = "3ba2809351c9dbb13be03b6f20b512c64b45f8a036013f65c09cf693af49b315"

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
