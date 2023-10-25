// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Sandboxer-Objc",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "Sandboxer",
            targets: ["Sandboxer"]),
    ],
    targets: [
        .target(
            name: "Sandboxer",
            path: "Sandboxer"),
    ]
)
