// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    products: [
        .library(
            name: "GoogleMapsBase",
            targets: [
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: [
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMaps.xcframework.zip",
            checksum: "444e2eff09c2e7dc34613880fc67fc769fb9510d954d9c5b9d96a2c9b6165f7b"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "19fead84329ae031972df2cd58f129fee06c155092effc2c0f826afa40983c3d"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "a05cfafc972875bcc89524de74ddb2c4834a9108e7191036dfbaab457a819feb"
        )
    ]
)
