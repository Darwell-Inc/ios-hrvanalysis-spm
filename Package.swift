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
            url: "https://github.com/galen-it/core-ios-spm/releases/download/1.1.0/DarwellCore.xcframework.zip",
            checksum: "db85dfd8bc1f5e560a05be46568ed36b575162f4541b84356e842fa6ca5353da"
        )
    ]
)
