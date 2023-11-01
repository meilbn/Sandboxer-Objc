// swift-tools-version: 5.9

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
            path: "Sandboxer",
            resources: [
                .copy("SandboxerResources.bundle")
            ],
            cSettings: [
                .headerSearchPath("Classes/**")
            ]),
    ]
)
