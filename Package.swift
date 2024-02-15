// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SwiftGenPlugin",
    products: [
        .plugin(name: "SwiftGenPlugin", targets: ["SwiftGenPlugin"])
    ],
    targets: [
        .plugin(
            name: "SwiftGenPlugin",
            capability: .buildTool(),
            dependencies: ["swiftgen"]
        ),
        .binaryTarget(
            name: "swiftgen",
            url: "https://github.com/shadone/SwiftGen/releases/download/6.6.2%2Bderiveddatafix/swiftgen-6.6.2+deriveddatafix.artifactbundle.zip",
            checksum: "a1ae6dd6bb3bdf303ca07764eaf32c21b4508a1d0f53ccf74e5cdfa31cb6eb29"
        )
    ]
)
