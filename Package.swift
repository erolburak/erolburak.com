// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "ErolburakCom",
    platforms: [
        .macOS(
            .v26
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/twostraws/Ignite.git",
            branch: "main"
        )
    ],
    targets: [
        .executableTarget(
            name: "ErolburakCom",
            dependencies: [
                "Ignite"
            ]
        )
    ]
)
