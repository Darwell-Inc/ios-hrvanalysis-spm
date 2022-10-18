// swift-tools-version:5.6

import PackageDescription

#warning("move binary artifact to private hosting")
#warning("core-ios-spm is public due to a bug is SPM/Xcode that prevents authentication")
let package = Package(
    name: "darwell-xpcore",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DarwellXPCore",
            targets: [
                "DarwellXpCore", "DarwellCore"
            ]
        ),
    ],
	dependencies: [
		.package(url: "git@github.com:ivalx1s/swift-tensorflowlite-spm.git", from: "2.7.0"),
	],
    targets: [
		.target(
			name: "DarwellXpCore",
			dependencies: [
				"DarwellCore",
				.product(name: "TensorFlowLite", package: "swift-tensorflowlite-spm")
			],
			path: "Sources"
		),
       .binaryTarget(
            name: "DarwellCore",
            url: "https://github.com/darwell-inc/monolith-ios-spm/releases/download/1.3.2/DarwellCore.xcframework.zip",
            checksum: "e02b20d2cc74690396dfbbd688b747ef00d336d6c668da0da192aa7733954f25"
        )
    ]
)

