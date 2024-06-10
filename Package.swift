// swift-tools-version:5.9
import CompilerPluginSupport
import PackageDescription

let package = Package(
  name: "SwiftLint",
  platforms: [.macOS(.v12)],
  products: [
    .plugin(name: "SwiftLintBuildToolPlugin", targets: ["SwiftLintBuildToolPlugin"])
  ],
  dependencies: [],
  targets: [
    .plugin(
      name: "SwiftLintBuildToolPlugin",
      capability: .buildTool(),
      dependencies: ["SwiftLintBinary"]
    ),
    .binaryTarget(
      name: "SwiftLintBinary",
      url: "https://github.com/realm/SwiftLint/releases/download/0.55.1/SwiftLintBinary-macos.artifactbundle.zip",
      checksum: "722a705de1cf4e0e07f2b7d2f9f631f3a8b2635a0c84cce99f9677b38aa4a1d6"
    )
  ]
)
