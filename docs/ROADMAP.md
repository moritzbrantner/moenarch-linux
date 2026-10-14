# Roadmap

This document tracks delivery milestones. The [Decision Atlas](DECISION-ATLAS.md) is the authority for user-facing product direction: a cohesive everyday Linux desktop that helps people grow closer to the Christian faith (1.1), with the initial faith experience primarily serving practicing Christians (1.3) within an explicitly Catholic liturgical and catechetical framework (1.5).

The first user-facing milestone is the **quality and usability of the desktop itself**, with subtle Catholic defaults (Decisions 2.2–2.3). The Arch-based image, installation, developer environment, and verification stages remain engineering foundations for that experience. More explicitly Catholic applications are later work. Under Decision 2.5, subtle desktop accents automatically follow the current liturgical day or season.

## First product milestone — A dignified Catholic-contextual desktop

- Install and use a coherent, polished graphical Linux desktop with a **familiar, mouse-first experience**: conventional panels and menus, overlapping windows, and discoverable application access and settings. Ordinary tasks must not require memorized keyboard shortcuts or automatic tiling (Decision 3.2).
- Present Catholic identity through restrained accent colors that automatically reflect the current liturgical day or season (Decision 2.5), rather than requiring prominent devotional interfaces.
- Show **Sunday first** in the desktop calendar and use **AD/BC** where Moenarch-controlled date displays render explicit era names.
- Respect the person using the desktop: the experience should be clear, considerate, and non-manipulative, not attention-grabbing for its own sake.
- Provide real user-facing evidence from the **installed graphical system**, including a complete mouse-driven journey (launching an app, managing windows, opening settings), interactive calendar behavior, date-era formatting, and a captured desktop session. Demonstrate that liturgical accent colors change with representative liturgical dates and are reflected in the actual desktop.

This milestone is a **product acceptance target**, not a claim that the desktop is already implemented. It can be delivered through independently verifiable vertical slices without changing its intended end state. The system does not need dedicated Catholic prayer, research, or focus applications to meet this first milestone.

## Engineering delivery stages

### Stage 1 — Bootable distribution image

- Build from Archiso `releng`.
- Apply Moenarch release identity after Arch packages are installed.
- Produce checksums and a build-input manifest.
- Boot under QEMU in CI and verify `ID=moenarch` from the live system.

### Stage 2 — Automated installation

- Partition a blank virtual disk.
- Install a minimal Moenarch system using standard Arch installation primitives.
- Configure bootloader, locale, user, networking, and release identity.
- Reboot from disk and verify the installed system independently of the live image.

### Stage 3 — Declarative profiles and integrated desktop

- Define `base`, `desktop`, `developer`, and `server` as composable package/service policies.
- Keep one distribution and one installer rather than separate editions.
- Add machine-readable profile validation.
- Make the `desktop` profile a genuinely usable, cohesive desktop experience rather than merely an installable package list. Verify the actual installed desktop user journey once that experience is approved in the Decision Atlas.

### Stage 4 — Moenarch packages

- Introduce signed Moenarch package repository infrastructure only for software Moenarch owns.
- Package release identity, installer, CLI, and verification tooling.

### Stage 5 — Rust system tooling

- Add a small Rust CLI for installer orchestration, diagnostics, verification, and reconciliation.
- Keep ownership boundaries explicit: Moenarch composes Arch unless a justified divergence is required.

## Future product journeys

After the first product milestone, independently usable Catholic applications and richer integration may advance the approved direction. Do not presume a particular prayer app, research assistant, content library, or content-control mechanism before further owner decisions. A Sunday-first **desktop calendar** is already approved under 2.3; a complete liturgical-calendar application is not.
