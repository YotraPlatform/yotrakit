// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.56"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/main/artefacts/\(version)/\(moduleName).zip"
let path = "artefacts/\(version)/\(moduleName).zip"
let checksum = "2e09f6659bbe4e0ad81845a8364484f916a661411f7e4bc8f097e05c7d71b98d"
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