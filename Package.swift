// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.58"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/main/artefacts/\(version)/\(moduleName).zip"
let path = "artefacts/\(version)/\(moduleName).zip"
let checksum = "79b7f8f95428e63b0fe1ef0e4a8d06c32b7f5b4bd8fe950d784cd9a111725d90"
let mode = "url"
let binaryTarget = mode == "local" ?
        PackageDescription.Target.binaryTarget(name: moduleName, path: path) :
        PackageDescription.Target.binaryTarget(name: moduleName, url: url, checksum: checksum);


let package = Package(
        name: moduleName,
        products: [
            // Products define the executables and libraries a package produces, and make them visible to other artefacts.
            .library(
                    name: moduleName,
                    targets: [moduleName]),
        ],
        targets: [
            binaryTarget,
        ]
)