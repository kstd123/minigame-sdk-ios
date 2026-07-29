// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MiniGameSDK",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "MiniGameSDK",
            targets: [
                "MiniGameSDK",
                "ZIPFoundation",
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MiniGameSDK",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.1.1/MiniGameSDK-0.1.1.xcframework.zip",
            checksum: "b154de58e533d5ff9d64a245f3f5ea839ebe05dc74640d8e24e78a238b4ca34f"
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.1.1/ZIPFoundation-0.9.20.xcframework.zip",
            checksum: "f53fd2f0463fb323f5d5448b4afb4c0e86e9d75f3767eb9308bae23436990324"
        ),
    ]
)
