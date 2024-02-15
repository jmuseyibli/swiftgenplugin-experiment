// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SwiftGenPluginExperiment",
    products: [
        .plugin(name: "SwiftGenPluginExperiment", targets: ["SwiftGenPluginExperiment"])
    ],
    targets: [
        .plugin(
            name: "SwiftGenPluginExperiment",
            capability: .buildTool(),
            dependencies: ["swiftgen"]
        ),
        .binaryTarget(
            name: "swiftgen",
            url: "https://github.com/shadone/SwiftGen/releases/download/6.6.2%2Bderiveddatafix/swiftgen-6.6.2+deriveddatafix.artifactbundle.zip",
            checksum: "7586363e24edcf18c2da3ef90f379e9559c1453f48ef5e8fbc0b818fbbc3a045"
        )
    ]
)
