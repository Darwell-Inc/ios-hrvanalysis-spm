// swift-tools-version:5.6

import PackageDescription

#warning("move binary artifact to private hosting")
#warning("core-ios-spm is public due to a bug is SPM/Xcode that prevents authentication")
let package = Package(
    name: "darwell-core",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DarwellCore",
            targets: [
                "DarwellCore",
            ]
        ),
    ],
    targets: [
       .binaryTarget(
            name: "DarwellCore",
            url: "https://github.com/galen-it/core-ios-spm/releases/download/1.2.0/DarwellCore.xcframework.zip",
            checksum: "b03061a116814ef1af5e1a6544100660ae75ad27b42f77b417ee472c8248bb75"
        )
    ]
)
