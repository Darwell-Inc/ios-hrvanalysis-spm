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
            checksum: "6202d4295bf7f01838c892a0f4981ed3f9e1f12876bdf09e639af5e0835d784d"
        )
    ]
)

