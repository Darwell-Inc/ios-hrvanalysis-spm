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
            checksum: "3c4c2ddfeecea04b040a00050f14a7e95c24563b17be49db3538035fbf5615a4"
        )
    ]
)

