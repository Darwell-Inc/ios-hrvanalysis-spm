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
            checksum: "766a48638fff132bcd9a34cd3305096237c8c687ca841b204efb4b71972a0231"
        )
    ]
)

