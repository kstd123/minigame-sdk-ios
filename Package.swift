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
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.1.0/MiniGameSDK-0.1.0.xcframework.zip",
            checksum: "0ab37b851c6e0c14ab8f5b872c6f8545119447c9e376db85daa3a90d2a29385b"
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.1.0/ZIPFoundation-0.9.20.xcframework.zip",
            checksum: "cd3e30d71540f544aa4aa163190475a6785086d6d8ade47c643438782cfd0d6b"
        ),
    ]
)
