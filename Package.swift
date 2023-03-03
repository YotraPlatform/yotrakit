// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let gitlabProjectId = "44017035"
let version = "0.0.7"
let url = "https://gitlab.com/api/v4/projects/\(gitlabProjectId)/packages/generic/yotrakit/\(version)/\(moduleName).zip"
let checksum = "424d57696c7a0a4067452aee5d75ae5f18b2df535dfeefac5ac241c3d669dbe5"

let package = Package(
        name: moduleName,
        products: [
            // Products define the executables and libraries a package produces, and make them visible to other packages.
            .library(
                    name: moduleName,
                    targets: [moduleName]),
        ],
        dependencies: [
            .package(url: "https://github.com/apple/swift-log", from: "1.5.2"),
        ],
        targets: [
            .binaryTarget(
                    name: moduleName,
                    url: url,
                    checksum: checksum),
        ]
)
