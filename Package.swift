// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "ErolburakCom",
    platforms: [
        .macOS(
            .v26
        )
    ],
    products: [
        .executable(
            name: "ErolburakCom",
            targets: [
                "ErolburakCom"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/Ze0nC/Publish.git",
            branch: "Multi-Language"
        ),
        .package(
            url: "https://github.com/nicklockwood/SwiftFormat.git",
            branch: "main"
        )
    ],
    targets: [
        .executableTarget(
            name: "ErolburakCom",
            dependencies: [
                "Publish"
            ]
        )
    ]
)
