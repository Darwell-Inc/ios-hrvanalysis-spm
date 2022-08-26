// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "darwell-core",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DarwellCore",
            type: .static,
            targets: ["DarwellCore"]
        ),
    ],
    targets: [
       .binaryTarget(
            name: "DarwellCore",
            url: "https://github.com/galen-it/core-ios-spm/releases/download/1.0.0/DarwellCore.xcframework.zip",
            checksum: "83e879c2b94bea92869053f2857b6526225d43f227857d8ced5dd385eed6674a"
        )
    ]
)
