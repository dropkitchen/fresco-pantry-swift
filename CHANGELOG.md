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
