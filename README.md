# Pantry

Fresco's iOS design system, distributed as a pre-compiled XCFramework.

## Install

```swift
// Package.swift
dependencies: [
    .package(url: "https://github.com/dropkitchen/fresco-pantry-swift", from: "0.2.0")
],
targets: [
    .target(name: "YourApp", dependencies: [
        .product(name: "Pantry", package: "fresco-pantry-swift")
    ])
]
```

In Xcode: **File → Add Package Dependencies…** and paste
`https://github.com/dropkitchen/fresco-pantry-swift`.

No credentials are required. The manifest resolves over anonymous HTTPS and the artifact downloads
from a public release asset.

## Use

```swift
import Pantry

struct ExampleView: View {
    var body: some View {
        PantryButton("Continue") {
            // …
        }
    }
}
```

`PantryInfo.version` reports which build you linked, which is the first thing to include in a defect
report.

## What you get

- One dynamic `Pantry.framework`, `ios-arm64` and `ios-arm64_x86_64-simulator`, with dSYMs so your
  crash reports symbolicate.
- iOS 16.4 and later. No Mac Catalyst or visionOS slice.
- No analytics, crash-reporting or advertising SDK, and no permissions.
- No third-party module in the public API, so your own dependency versions are unaffected by ours.

Third-party components compiled into the artifact are listed in
[THIRD-PARTY-LICENSES.md](THIRD-PARTY-LICENSES.md). Terms are in [LICENSE](LICENSE).

## Versions

Semantic versioning. Tags are `vX.Y.Z`. Anything below `1.0.0` is pre-release and its API may change
without a major bump.

Each release records its artifact size, SHA-256 checksum and build toolchain in
[CHANGELOG.md](CHANGELOG.md).

**A published tag is never deleted or re-pointed.** SwiftPM caches resolved artifacts by checksum, so
replacing the bytes behind a tag would break every consumer already pinned to it. A bad release is
superseded by a new patch version and marked as superseded in the changelog.

## Troubleshooting

**`multiple packages … declare targets with a conflicting name`** — something else in your dependency
graph declares a binary target that clashes. If it names `Pantry`, you have two routes to Pantry in
one graph; depend on this package only, and let anything that needs Pantry get it transitively.

**Source is not available.** This repository holds a manifest and release assets. That is deliberate —
the artifact is pre-compiled so our internal dependency versions can never conflict with yours.
