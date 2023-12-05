// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    defaultLocalization: "en",
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
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.3.1/GoogleMaps.xcframework.zip",
            checksum: "36f180556405a1ac6a934dd779fdfd280e19a73121eba45b32e4ee9f1e6370f2"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.3.1/GoogleMapsBase.xcframework.zip",
            checksum: "5e0a2259f86e4d83e6ffa307dcab3593bccaf8dbc090cf1fac78ee593a892ef2"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.3.1/GoogleMapsCore.xcframework.zip",
            checksum: "3055ba0738bc1e596c1e3f33c37974cfbfa95c3877021b4f06126cd299990065"
        )
    ]
)
