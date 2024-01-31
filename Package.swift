// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DynamicSwiftKit",
    products: [
        .library(name: "DynamicSwiftKit", targets: ["DynamicSwiftKit"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "DynamicSwiftKit", path: "./Sources/DynamicSwiftKit.xcframework")
    ]
)
