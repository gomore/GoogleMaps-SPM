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
            checksum: "a06947f68f7085799360aff0940d7ce069d81bcd67bd3aac2f57ef1887f7e63f"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "fe796d58748c89b3bff42e0633561260d6a6ee0916305565ef9cfbb4354579ca"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/gomore/GoogleMaps-SPM/releases/download/8.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "e3c4807965a6105160a0ea163a50889bd60ba3686f05136bc6476c6bd44eac32"
        )
    ]
)
