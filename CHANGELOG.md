# Changelog

Every release records the facts needed to reproduce or audit it: artifact size per slice, the SHA-256
the manifest pins, the toolchain that built it, and the versions of the third-party components
compiled in. Appended automatically by `fresco-pantry-ios/scripts/publish.sh`.

<!-- releases are appended below this line -->

## v0.0.1 — SUPERSEDED, do not use

`Pantry.framework` shipped without an `Info.plist`, so an app cannot embed it:

```
error: Framework …/Pantry.framework did not contain an Info.plist
```

The framework itself built and linked cleanly, which is why it passed release verification — no gate
looked at the `Info.plist`, because Xcode normally generates one and the framework project here is
hand-written. `v0.0.2` fixes it and adds a gate (V20) that checks every slice.

Not deleted, and not re-pointed: SwiftPM caches resolved artifacts by checksum, so replacing the bytes
behind a published tag breaks every consumer already pinned to it. Superseding is the only safe repair.

## v0.0.1 — 2026-08-10

| | |
|---|---|
| Checksum | `f98afd977cee5bf2db18102871029640d3d94cbe7718f841bc47e84680cf2d3d` |
| Zipped | 9.1M |
| Device slice | 9.5M |
| Simulator slice |  18M |
| Built with | Xcode 26.5 |
| Kingfisher | 8.11.0 |

## v0.0.2 — 2026-08-10

| | |
|---|---|
| Checksum | `bf0eec791f80543fe98065e0054e5a2be6361d63d44785353295713f2c79f95b` |
| Zipped | 9.1M |
| Device slice | 9.5M |
| Simulator slice |  18M |
| Built with | Xcode 26.5 |
| Kingfisher | 8.11.0 |

## v0.1.0 — 2026-08-11

| | |
|---|---|
| Checksum | `b8923ac759049b18c3e5b38cead39da33e9a48a1fa5087826d43d5a05c667518` |
| Zipped | 9.2M |
| Device slice | 9.5M |
| Simulator slice |  18M |
| Built with | Xcode 26.5 |
| Kingfisher | 8.11.0 |

## v0.2.0 — 2026-08-13

| | |
|---|---|
| Checksum | `d2f0fcb80bbbd361bf4c9b24fe2886e3430e9314acbe5d604b1f9bbe32a24504` |
| Zipped |  39M |
| Device slice |  41M |
| Simulator slice |  77M |
| Built with | Xcode 26.5 |
| Kingfisher | 8.11.0 |

## v0.3.0 — 2026-08-14

| | |
|---|---|
| Checksum | `8c082cc79e6f21cd3c1a3967c126e8ba6d0a27d37703fbb30a7788cdc6cf3eb5` |
| Zipped |  41M |
| Device slice |  44M |
| Simulator slice |  83M |
| Built with | Xcode 26.5 |
| Kingfisher | 8.11.0 |

## v0.3.1 — 2026-09-11

| | |
|---|---|
| Checksum | `e7691ae8d4cd9d15fd8bef7a9186418a1224385a595cdb8b84e5d108ce21fb99` |
| Zipped |  41M |
| Device slice |  44M |
| Simulator slice |  83M |
| Built with | Xcode 26.5 |
| Kingfisher | 8.11.0 |

## v0.4.0 — 2026-09-16

| | |
|---|---|
| Checksum | `75ee4f2da5316b4f22621e26a41d91e81f6021eabd2b5bcd5a1b0f05a3a6eb16` |
| Zipped |  42M |
| Device slice |  45M |
| Simulator slice |  84M |
| Built with | Xcode 26.5 |
| Kingfisher | 8.11.0 |

## v0.5.0 — 2026-09-16

| | |
|---|---|
| Checksum | `711a94020f8e1c03ea84ab018e0eac47bcc9ee420cc86b9b8c23d26667b49a02` |
| Zipped |  42M |
| Device slice |  45M |
| Simulator slice |  84M |
| Built with | Xcode 26.5 |
| Kingfisher | 8.11.0 |

## v0.5.1 — 2026-09-24

| | |
|---|---|
| Checksum | `36c9fdec481c4020acb6ac4d8ea848c91943e0a1a4fe3ed3045506d56cf0f15b` |
| Zipped |  42M |
| Device slice |  45M |
| Simulator slice |  84M |
| Built with | Xcode 26.5 |
| Signed by | Apple Distribution: Adaptics Limited (RH9GNXSHK5) |
| Kingfisher | 8.11.0 |
