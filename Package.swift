// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Fluky",
    platforms: [
        .iOS("9.0")
    ],
    products: [
        .library(
            name: "Fluky",
            targets: ["Fluky"]),
    ],
    targets: [
        .target(
            name: "Fluky",
            dependencies: [],
            path: "Fluky/Fluky"),
    ],
    swiftLanguageVersions: [
        .v4_2,
        .v5
    ]
)
