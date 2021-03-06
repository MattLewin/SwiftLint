import PackageDescription

let package = Package(
  name: "SwiftLint",
  targets: [
    Target(name: "SwiftLintFramework"),
    Target(name: "swiftlint",
      dependencies: [
        .Target(name: "SwiftLintFramework")
      ]),
  ],
  dependencies: [
    .Package(url: "https://github.com/jpsim/SourceKitten.git", majorVersion: 0, minor: 11),
    .Package(url: "https://github.com/behrang/YamlSwift.git", majorVersion: 1),
    .Package(url: "https://github.com/scottrhoyt/SwiftyTextTable.git", majorVersion: 0, minor: 3),
  ]
)
