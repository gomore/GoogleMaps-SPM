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
            url: "https://github.com/GoMore/GoogleMaps-SPM/releases/download/7.2.0/GoogleMaps.xcframework.zip",
            checksum: "959fbc3711d0f1f03d96a8e78a1e694795af5faeb440fde0bedf694ae8eaf344"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/GoMore/GoogleMaps-SPM/releases/download/7.2.0/GoogleMapsBase.xcframework.zip",
            checksum: "2dcdeee41481bd7d91d90cf5ea467b21228e2b03559bfc7eb0421dc5dbb638f1"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/GoMore/GoogleMaps-SPM/releases/download/7.2.0/GoogleMapsCore.xcframework.zip",
            checksum: "3a36334a481f49d8d95ad2581b28da641e365f3171f3907fb7a902087d82f8b5"
        )
    ]
)
