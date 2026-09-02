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
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.6/MiniGameSDK-0.2.6.xcframework.zip",
            checksum: "a1bcb7495db9079974c9ee4dec25db4ce834a9177b0653f93b816c1e4d51577e"
        ),
        .binaryTarget(
            name: "ZIPFoundation",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.6/ZIPFoundation-0.9.20.xcframework.zip",
            checksum: "0e643c5d3994133c7c32533981081b42c6a17715efc278286913878fe8aaf91c"
        ),
        .binaryTarget(
            name: "MiniGameAdsAppLovin",
            url: "https://github.com/kstd123/minigame-sdk-ios/releases/download/0.2.6/MiniGameAdsAppLovin-0.2.6.xcframework.zip",
            checksum: "e03debab6e1efb5e25c11e1858400be7e390644973239c4340392d9a2731f851"
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
