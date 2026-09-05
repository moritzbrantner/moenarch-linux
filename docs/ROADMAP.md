# Roadmap

## Milestone 1 — Bootable distribution image

- Build from Archiso `releng`.
- Apply Moenarch release identity after Arch packages are installed.
- Produce checksums and a build-input manifest.
- Boot under QEMU in CI and verify `ID=moenarch` from the live system.

## Milestone 2 — Automated installation

- Partition a blank virtual disk.
- Install a minimal Moenarch system using standard Arch installation primitives.
- Configure bootloader, locale, user, networking, and release identity.
- Reboot from disk and verify the installed system independently of the live image.

## Milestone 3 — Declarative profiles

- Define `base`, `desktop`, `developer`, and `server` as composable package/service policies.
- Keep one distribution and one installer rather than separate editions.
- Add machine-readable profile validation.

## Milestone 4 — Moenarch packages

- Introduce signed Moenarch package repository infrastructure only for software Moenarch owns.
- Package release identity, installer, CLI, and verification tooling.

## Milestone 5 — Rust system tooling

- Add a small Rust CLI for installer orchestration, diagnostics, verification, and reconciliation.
- Keep ownership boundaries explicit: Moenarch composes Arch unless a justified divergence is required.
