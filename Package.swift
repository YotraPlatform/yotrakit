// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let version = "0.0.69"
let url = "https://raw.githubusercontent.com/YotraPlatform/yotrakit/main/artefacts/\(version)/\(moduleName).zip"
let path = "artefacts/\(version)/\(moduleName).zip"
let checksum = "0214c73127eb02bfec591e7955518e122d68648ccde5f263ce2918735f10c35c"
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