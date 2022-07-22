// swift-tools-version: 5.6

///
import PackageDescription

///
let package = Package(
    name: "PasteboardModule",
    products: [
        .library(
            name: "PasteboardModule",
            targets: ["PasteboardModule"]
        ),
    ],
    dependencies: [
        
    ],
    targets: [
        
        ///
        .target(
            name: "PasteboardModule",
            dependencies: []
        ),
        
        ///
        .testTarget(
            name: "PasteboardModule-tests",
            dependencies: ["PasteboardModule"]
        ),
    ]
)
