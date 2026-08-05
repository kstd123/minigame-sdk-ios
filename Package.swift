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
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.1/MiniGameSDK-0.2.1.xcframework.zip",
            checksum: "62f18ec83346e7f32f561bad823197bed354ba147239f008a256322a303fffc2"
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.1/ZIPFoundation-0.9.20.xcframework.zip",
            checksum: "ada265bb4d9a95bb9f9a56519f56069d3e2e811c032bed28b13ea7787824497c"
        ),
        .binaryTarget(
            name: "MiniGameAdsAppLovin",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.1/MiniGameAdsAppLovin-0.2.1.xcframework.zip",
            checksum: "40d60ad9f3e359aa602e79bdccef542c4e7042e402ce332f86ba06939310925a"
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
