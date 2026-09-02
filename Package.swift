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
        .library(
            name: "MiniGameAdsAppLovin",
            targets: [
                "MiniGameAdsAppLovin",
                "MiniGameAdsAppLovinLinker",
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git",
            exact: "13.6.3"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MiniGameSDK",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.5/MiniGameSDK-0.2.5.xcframework.zip",
            checksum: "d1161bd6aea277ba78e129b259cd9feebacdd3d829e917994679c4a37a87bf53"
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.5/ZIPFoundation-0.9.20.xcframework.zip",
            checksum: "637e04b1a9fde2d6ec52b6c935c00b4042a965443845f4b92f1240481f5b7c86"
        ),
        .binaryTarget(
            name: "MiniGameAdsAppLovin",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.5/MiniGameAdsAppLovin-0.2.5.xcframework.zip",
            checksum: "e3e4412b6f4b2f4a0bf9a9c4ad1b26720381316498ece243379b093ed1103caa"
        ),
        .target(
            name: "MiniGameAdsAppLovinLinker",
            dependencies: [
                "MiniGameSDK",
                "ZIPFoundation",
                "MiniGameAdsAppLovin",
                .product(
                    name: "AppLovinSDK",
                    package: "AppLovin-MAX-Swift-Package"
                ),
            ],
            path: "Sources/MiniGameAdsAppLovinLinker"
        ),
    ]
)
