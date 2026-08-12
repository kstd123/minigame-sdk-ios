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
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.2/MiniGameSDK-0.2.2.xcframework.zip",
            checksum: "8aed7954a8561d1d816e2a4c0399a897a822d4f1c1d26ae9ac7382eabd083562"
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.2/ZIPFoundation-0.9.20.xcframework.zip",
            checksum: "25bf788cd2e2d36d9da034560315b1c2ee4d2422ba3765c21279f80b1f0066d6"
        ),
        .binaryTarget(
            name: "MiniGameAdsAppLovin",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.2/MiniGameAdsAppLovin-0.2.2.xcframework.zip",
            checksum: "a097e11b5e8a2dba740cec03bc264bb1ec3e85bfebc09207036629767e05764d"
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
