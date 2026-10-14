# Roadmap

This document tracks delivery milestones. The [Decision Atlas](DECISION-ATLAS.md) is the authority for user-facing product direction: a cohesive everyday Linux desktop that helps people grow closer to the Christian faith (1.1), with the initial faith experience primarily serving practicing Christians (1.3) within an explicitly Catholic liturgical and catechetical framework (1.5).

The first user-facing milestone is the **quality and usability of the desktop itself**, with subtle Catholic defaults (Decisions 2.2–2.3). The Arch-based image, installation, developer environment, and verification stages remain engineering foundations for that experience. More explicitly Catholic applications are later work. Under Decisions 2.5 and 2.7, subtle desktop accents automatically follow the applicable liturgical day or season of the **current General Roman Calendar**.

## First product milestone — A dignified Catholic-contextual desktop

- Boot installation media into a usable **KDE Plasma live desktop** to explore the system and check hardware before committing to installation; a visible **Install Moenarch** action starts a guided graphical installer on request (Decision 4.2). Simply booting or browsing the live system must not alter disks. The standard KDE Plasma installation must also complete entirely **offline** from media containing the required packages, followed by a successful offline boot from the installed disk (Decision 4.4).
- Boot the installed system to a **graphical account-password login screen** and only then open KDE Plasma (Decision 4.8). The login password is distinct from optional disk encryption (Decision 4.6). Configure a **familiar, mouse-first** desktop with conventional panels, menus, overlapping windows and discoverable controls (Decisions 3.2 and 3.4); ordinary tasks must not require memorized shortcuts or automatic tiling.
- Present a **warm, classical Catholic visual identity** through restrained sacred-art, architectural and typographic influences (Decision 3.6) alongside accent colors automatically reflecting the **current General Roman Calendar** (Decisions 2.5 and 2.7). Keep normal interface controls legible, usable and free from excessive ornamentation; do not require devotional applications.
- Show **Sunday first** in the desktop calendar and use **AD/BC** where Moenarch-controlled date displays render explicit era names.
- Respect the person using the desktop: the experience should be clear, considerate, and non-manipulative, not attention-grabbing for its own sake.
- Provide real user-facing evidence from the **installed KDE Plasma session**, including a complete mouse-driven journey (launching an app, managing windows, opening Plasma settings), interactive calendar behavior, date-era formatting, and screenshots showing the classical Catholic visual treatment across ordinary desktop surfaces. Demonstrate that liturgical accent colors match representative observances in the current General Roman Calendar, change when the effective liturgical date changes, and are reflected in the actual desktop.

This milestone is a **product acceptance target**, not a claim that the desktop is already implemented. It can be delivered through independently verifiable vertical slices without changing its intended end state. The system does not need dedicated Catholic prayer, research, or focus applications to meet this first milestone.

## Engineering delivery stages

### Stage 1 — Bootable distribution image

- Build from Archiso `releng`.
- Apply Moenarch release identity after Arch packages are installed.
- Produce checksums and a build-input manifest.
- Boot under QEMU in CI and verify `ID=moenarch` from the live system.

### Stage 2 — Automated installation

- Retain the existing explicit-opt-in, test-only installation proof. The approved first-use experience calls for a separate **guided graphical installer launched from the live Plasma desktop**, not an automatically executed disk write (Decision 4.2). Include everything needed for the standard KDE Plasma installation on the USB image; build and verify the normal user-facing installation with networking disabled (Decision 4.4). **Unencrypted storage is preselected**, and users can explicitly opt into encryption after seeing the data-protection trade-off; independently verify both offline installation paths (Decision 4.6).
- Partition a blank virtual disk.
- Install a minimal Moenarch system using standard Arch installation primitives.
- Configure bootloader, locale, **local user account with password**, networking, and release identity. First installed boot requires password login (Decision 4.8), independently of whether optional disk encryption was selected.
- Reboot from disk and verify the installed system independently of the live image.

### Stage 3 — Declarative profiles and integrated desktop

- Define `base`, `desktop`, `developer`, and `server` as composable package/service policies.
- Keep one distribution and one installer rather than separate editions.
- Add machine-readable profile validation.
- Make the `desktop` profile a genuinely usable, cohesive **KDE Plasma** experience rather than merely an installable package list. Verify account-password login and the actual installed mouse-first desktop user journey against the Decision Atlas.

### Stage 4 — Moenarch packages

- Introduce signed Moenarch package repository infrastructure only for software Moenarch owns.
- Package release identity, installer, CLI, and verification tooling.

### Stage 5 — Rust system tooling

- Add a small Rust CLI for installer orchestration, diagnostics, verification, and reconciliation.
- Keep ownership boundaries explicit: Moenarch composes Arch unless a justified divergence is required.

## System maintenance experience

- Notify the installed KDE Plasma user when system updates are available; **require explicit approval to install by default** (Decision 5.2).
- Offer a discoverable, persistent desktop setting to switch to **automatic update installation** and back to user-approved updates; the selected mode must govern the real update process, not only the interface.
- Verify notification, manual approval, automatic mode, persistence across restart, and clear update results/failure indications in a real installed desktop with controlled update inputs. Recovery experience remains open in Question 5.3.

## Future product journeys

After the first product milestone, independently usable Catholic applications and richer integration may advance the approved direction. Do not presume a particular prayer app, research assistant, content library, or content-control mechanism before further owner decisions. A Sunday-first **desktop calendar** is already approved under 2.3; a complete liturgical-calendar application is not.
