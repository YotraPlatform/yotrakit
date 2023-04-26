// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.10"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/artefacts/\(version)/\(moduleName).zip"
let checksum = "d2775ab9870bf39edb587cb440ceeec6e42d900a8bcc52df88709d8375311078"

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
