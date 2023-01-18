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
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/7.3.0/GoogleMaps.xcframework.zip",
            checksum: "f93a4871de04a90708c3acbd7aad5127d4a7ea0966a90a5085baf28eafb4d731"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/7.3.0/GoogleMapsBase.xcframework.zip",
            checksum: "3cd225cf69b8fd0ed1d71d961933da3565b1e66f7452f47be7cd5d33fdf0269f"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/7.3.0/GoogleMapsCore.xcframework.zip",
            checksum: "3223afa3e93b6573a280d6c8ff2c7f4ed880bc8f7c75d3be8a9aa611a2284ce2"
        )
    ]
)
