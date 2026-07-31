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
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.0/MiniGameSDK-0.2.0.xcframework.zip",
            checksum: "bae922b2c8246dfd566310868e63906df8e7a6bdabfa00a85bb1537c8575bf9b"
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.0/ZIPFoundation-0.9.20.xcframework.zip",
            checksum: "73df0e541a412c7b6bcd3262e9e0d8cff7db09bcd6ca070fcd2ed19f52992db0"
        ),
        .binaryTarget(
            name: "MiniGameAdsAppLovin",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.0/MiniGameAdsAppLovin-0.2.0.xcframework.zip",
            checksum: "5341bc8fbf4a72cd57a7859c059ab46d576d210251e7a8e772568ecd0da79786"
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
