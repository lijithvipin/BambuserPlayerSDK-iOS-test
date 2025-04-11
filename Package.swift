// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "BambuserPlayerSDK",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "BambuserPlayerSDK",
            targets: ["BambuserPlayerSDK", "BambuserPlayerBundle"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "BambuserPlayerSDK",
            path: "Sources/BambuserPlayerSDK.xcframework"
        ),
        .target(
            name: "BambuserPlayerBundle",
            dependencies: [
            ],
            resources: [
                .process("Resources/Localization/LocalizedStrings-English.json"),
            ]
        ),
    ]
)
