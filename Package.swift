// swift-tools-version:5.3
import PackageDescription

let version = "2.0.0-beta2"
let checksum = "f43283ba6a7974a4cb863306cff672f6818666b4e19f3fa5ae1ffa4ed1cb9b09"
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

