# Roadmap

This document tracks delivery milestones. The [Decision Atlas](DECISION-ATLAS.md) is the authority for user-facing product direction: a cohesive everyday Linux desktop that helps people grow closer to the Christian faith (1.1), with the initial faith experience primarily serving practicing Christians (1.3).

The existing Arch-based build, installation, developer-environment and verification milestones remain foundations for that goal. Exact faith-focused workflows, tradition-specific defaults, and desktop technology choices remain unsettled; examples discussed in steering are not automatically approved features.

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

## Milestone 3 — Declarative profiles and integrated desktop

- Define `base`, `desktop`, `developer`, and `server` as composable package/service policies.
- Keep one distribution and one installer rather than separate editions.
- Add machine-readable profile validation.
- Make the `desktop` profile a genuinely usable, cohesive desktop experience rather than merely an installable package list. Verify the actual installed desktop user journey once that experience is approved in the Decision Atlas.

## Milestone 4 — Moenarch packages

- Introduce signed Moenarch package repository infrastructure only for software Moenarch owns.
- Package release identity, installer, CLI, and verification tooling.

## Milestone 5 — Rust system tooling

- Add a small Rust CLI for installer orchestration, diagnostics, verification, and reconciliation.
- Keep ownership boundaries explicit: Moenarch composes Arch unless a justified divergence is required.

## Future product journeys

Following resolution of the relevant Atlas Questions, plan independently usable and verifiable desktop experiences that advance the approved Christian-oriented goal. Do not preselect a specific prayer app, liturgical calendar, content library, assistant, or filtering behavior from earlier suggestions alone.
