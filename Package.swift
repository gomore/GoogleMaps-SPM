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
            checksum: "9954bc13c2a4fea4992693f61e2c62e58dad70fac74d68d8ea2aed60ad6f91d6"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "4ed29b9b43863e8c1f7238548566210e75684cc1d574f0a286df0717f1008602"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "8efc7fd4d776e730d0dd1d747ca22fb53baaa311cd36c41b0ce8b554c3981405"
        )
    ]
)
