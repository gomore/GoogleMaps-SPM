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
            checksum: "b2be18ebe9e3b49d2d8ec17bed22b322247a01dd3635f7dd8e63f0bb53dea5af"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "ec9caa47217a965dfeb093b68470a63495a7d03bc0226b9cfff721f845348203"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "c304b2d42c4105117242deff2b6fc6129f8a79e3343763a78c33055ee26afd82"
        )
    ]
)
