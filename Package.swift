// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "ReCaptcha",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "ReCaptcha",
            targets: ["ReCaptcha"])
    ],
    dependencies: [
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "ReCaptcha",
            dependencies: [],
            path: "ReCaptcha",
            resources: [
                .process("Assets/recaptcha.html")
            ],
            linkerSettings: [
                .linkedFramework("UIKit")
            ]
        )
    ]
)
