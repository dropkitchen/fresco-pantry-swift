// swift-tools-version: 5.10
// fresco-pantry-swift's Package.swift is GENERATED from
// fresco-pantry-ios/dist/Package.swift.template by scripts/render-manifest.sh. Edit the template,
// never the generated file — the next publish overwrites it. The version and the checksum must
// always describe the same artifact, so they are written together or not at all.
//
// A deliberately low tools version: a partner on an older Xcode can still resolve this package, and
// nothing here needs a newer manifest API. The iOS floor is the Pantry framework's, not this file's.
import PackageDescription

let package = Package(
  name: "fresco-pantry-swift",
  platforms: [.iOS("16.4")],
  products: [
    .library(name: "Pantry", targets: ["Pantry"])
  ],
  targets: [
    .binaryTarget(
      name: "Pantry",
      url: "https://github.com/dropkitchen/fresco-pantry-swift/releases/download/v0.7.2/Pantry.xcframework.zip",
      checksum: "d59147526fdc39986defceab5d86369a73491bb75f28fc2b44280b53d83e8191"
    )
  ]
)
