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
            checksum: "508ace9b895a0d40e6a2aed3557e35a06ed9c48b09d24e45958a6012e2550dd7"
        )
    ]
)

