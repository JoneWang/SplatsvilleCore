// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "SplatsvilleCore",
    products: [
        .library(
            name: "SplatsvilleCore",
            type: .dynamic,
            targets: ["SplatsvilleCore"]),
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SplatsvilleCore",
            dependencies: []),
        .testTarget(
            name: "SplatsvilleCoreTests",
            dependencies: ["SplatsvilleCore"]),
    ]
)
