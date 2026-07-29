# MiniGameSDK

Binary Swift Package distribution of Particle Media's MiniGame iOS SDK.

## Requirements

- iOS 15 or later
- Xcode 15 or later
- Swift 5.9 or later

## Installation

In Xcode, select **File → Add Package Dependencies** and enter:

```text
https://github.com/kstd123/minigame-sdk-ios.git
```

Select version `0.1.1` and add the `MiniGameSDK` product to the app target.

For a package manifest:

```swift
dependencies: [
    .package(
        url: "https://github.com/kstd123/minigame-sdk-ios.git",
        exact: "0.1.1"
    ),
]
```

Import the SDK from application code:

```swift
import MiniGameSDK
```

The package distributes signed binary XCFrameworks for iOS devices and
simulators. Release archives are pinned by Swift Package Manager checksums.

## License

MiniGameSDK is proprietary software. See [LICENSE](LICENSE).
ZIPFoundation notices are available in
[ThirdPartyNotices.md](ThirdPartyNotices.md).
