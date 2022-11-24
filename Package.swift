// swift-tools-version:5.6

import PackageDescription

#warning("move binary artifact to private hosting")
#warning("it's public due to a bug is SPM/Xcode that prevents authentication")
let package = Package(
    name: "ios-hrvanalysis",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "HRVAnalysis",
            targets: [
                "HRVAnalysis"
            ]
        ),
    ],
    targets: [
       .binaryTarget(
            name: "HRVAnalysis",
            url: "https://github.com/darwell-inc/ios-hrvanalysis-spm/releases/download/1.0.1/HRVAnalysis.xcframework.zip",
            checksum: "cfc39ccc8556d39c5ac0d60448f58d637fd69a2c6b4362d80ee6f85ce5be7143"
        )
    ]
)

