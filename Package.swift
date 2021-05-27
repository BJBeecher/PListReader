// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PListReader",
    products: [
        .library(
            name: "PListReader",
            targets: ["PListReader"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PListReader",
            dependencies: []),
        .testTarget(
            name: "PListReaderTests",
            dependencies: ["PListReader"]),
    ]
)
