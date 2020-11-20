// swift-tools-version:5.3
import PackageDescription

let version = "2.0.0"
let checksum = "837ecb11847f667a217a4a953ac8214b930ab181eb3cbb8d6ee9e7cbf8a7e0bc"
let url = "https://github.com/sparkle-project/Sparkle/releases/download/\(version)/Sparkle-SPM-\(version).zip"


let package = Package(
    name: "Sparkle",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "Sparkle",
            targets: ["Sparkle"])
    ],
    targets: [
        .binaryTarget(name: "Sparkle", path: "./Sparkle.xcframework")
    ]
)

