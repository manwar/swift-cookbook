// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Banner",
    products: [
        .executable(name: "banner", targets: ["Banner"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "0.0.1")
    ],
    targets: [
        .target(name: "Banner",
                dependencies: [
                    .product(name: "ArgumentParser",
                             package: "swift-argument-parser")
                ]),
        .testTarget(name: "BannerTests",
                    dependencies: ["Banner"]),
    ]
)
