// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let moduleName = "YotraKit"
let gitlabProjectId = "44017035"
let version = "0.0.1"
let url = "https://gitlab.com/api/v4/projects/\(gitlabProjectId)/packages/generic/yotrakit/\(version)/\(moduleName).zip"
let checksum = "12d4302d045c42f6fb7f637b0f32b4c6cbc7ca18b93de904c38eb0f5a168cf91"

let package = Package(
        name: moduleName,
        products: [
            // Products define the executables and libraries a package produces, and make them visible to other packages.
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
