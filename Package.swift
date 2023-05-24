// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.20"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/main/artefacts/\(version)/\(moduleName).zip"
let checksum = "89d0db1b86342c156104d3090520c2960bad84c4e3bfc02b1250b958c450b070"

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
