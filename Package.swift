// swift-tools-version:5.3
import PackageDescription

let version = "2.0.0-beta1"
let checksum = "373e8426a83e6f61f52191420ee9c59c5c898b86dbf9a3ca0f6cc06db0bbb6f6"
let url = "https://github.com/sparkle-project/Sparkle/releases/download/\(version)/Sparkle-SPM-\(version).zip"


let package = Package(
    name: "RSSparkle",
    platforms: [.macOS(.v10_11)],
    products: [
        .library(name: "RSSparkle", targets: ["RSSparkle"]),
        .library(name: "RSSparkleXPC", targets: ["RSSparkleXPC"])
    ],
    targets: [
        .binaryTarget(name: "RSSparkle", path: "./Sparkle.xcframework"),
        .target(name: "RSSparkleXPC", resources: [.copy("Resources")])
    ]
)

