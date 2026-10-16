# Architecture

## Ownership boundary

Moenarch Linux is an Arch Linux derivative, not a fork of every Arch component.

Arch remains upstream authority for the Linux kernel, pacman, systemd, the core userspace, and the standard package repositories. Moenarch owns the distribution image, release identity, installation experience, defaults, validation, and Moenarch-specific system tooling.

The project should only fork or replace a lower-level Arch component when a concrete Moenarch requirement cannot be satisfied cleanly by composition or extension.

## Initial delivery path

The first release path is:

1. Archiso `releng` profile as the upstream live-media foundation.
2. A small Moenarch overlay containing identity and test instrumentation.
3. A deterministic build wrapper that records the exact archiso version and image checksum.
4. QEMU boot verification against the generated ISO.
5. Installation testing onto an empty virtual disk in a later slice.

## Build inputs

The repository keeps Moenarch-owned configuration separate from the packaged Archiso profile. `scripts/prepare-profile` copies the installed `releng` profile into a generated work tree and overlays `archiso/moenarch` on top of it.

This avoids vendoring Arch's bootloader configuration while preserving a clear review boundary for Moenarch changes. The exact Archiso package version used for a build is recorded next to the ISO artifact.

A future supply-chain slice should pin the Arch package snapshot used for release builds. Until then, builds are deterministic with respect to a fixed repository commit and fixed Arch package state, but are not claimed to be bit-for-bit reproducible across changing Arch mirrors.

## TECH-001 — Independently bootable recovery environment

- **Status:** owner-approved 2026-10-17; /tech-steer option **B** (dedicated recovery environment).
- **Product basis:** [Decision Atlas](docs/DECISION-ATLAS.md) 5.4, 5.6 and 5.8 require pre-update recovery, preserved personal files and explicit restore consent; 4.6 and 4.16 require compatible encrypted/unencrypted installed layouts. [Recovery #10](https://github.com/moritzbrantner/moenarch-linux/issues/10) owns the working restore journey.
- **Selected approach:** Install a separately bootable recovery environment on the machine, reachable through a discoverable boot path even when the main OS root or KDE fails. Its startup and restore tools must not require a working instance of the OS being repaired, an installation USB, a network connection or a terminal-only recovery recipe. The recovery environment is distinct from the OS state that may be rolled back; do not make its availability depend on booting a previous ordinary-system snapshot.
- **Restore contract:** Inspect and validate available pre-update system recovery points, explain the system changes and personal-file preservation, and require explicit confirmation before mutation. Restore OS packages and relevant system configuration coherently while leaving personal files (including post-checkpoint edits) untouched. Entering recovery, declining restoration and encountering failed boots must not trigger rollback. Keep the restored OS and its boot artifacts consistent: kernels/initramfs and boot entries outside root snapshots must not strand a restored system. If the selected recovery point or boot assets are missing or corrupt, fail safely without touching personal data.
- **Installer/update integration:** [Installer #8](https://github.com/moritzbrantner/moenarch-linux/issues/8) provisions the recovery environment and boot access for both default unencrypted and selected LUKS-encrypted installations, with a safe unlock path for protected system state; it must not expose encrypted personal data through an unprotected recovery copy. [Updates #9](https://github.com/moritzbrantner/moenarch-linux/issues/9) creates usable pre-update OS recovery points and preserves the recovery entry/environment across both manual and automatic updates. [Recovery #10](https://github.com/moritzbrantner/moenarch-linux/issues/10) owns user-facing restoration; [ISO release #12](https://github.com/moritzbrantner/moenarch-linux/issues/12) independently qualifies the integrated result.
- **Implementation freedom:** Prefer existing Arch, boot and filesystem facilities. [Draft installer PR #14](https://github.com/moritzbrantner/moenarch-linux/pull/14) proposes Btrfs `@` (system), `@home` (personal), `@snapshots`, LUKS2 when selected, and a separate ESP; that is a candidate layout, not demonstrated recovery. Choose and validate the environment's exact boot image, placement, update mechanism and space budget against that layout before declaring it installable. Do not mandate a new filesystem, an arbitrary snapshot count or a backup service.
- **Alternative declined:** Option A, booting a previous ordinary-system snapshot as the sole recovery interface, leaves recovery too dependent on the damaged installation. Using snapshots *as system restore points* remains compatible with the selected option B.
- **Verification required:** On the actual installed image under network-disabled UEFI QEMU, independently exercise unencrypted and encrypted installations, a deliberate OS/KDE-breaking update, booting the dedicated recovery environment without normal OS startup, no-op cancellation, explicit confirmed restore, coherent OS/boot recovery, and byte-for-byte preservation of personal files created or changed after the checkpoint. This choice is not implementation or acceptance evidence.

## TECH-002 — Precomputed offline liturgical calendars

- **Status:** owner-approved 2026-10-17; /tech-steer question 2, option **A** (precomputed calendar data).
- **Product basis:** [Decision Atlas](docs/DECISION-ATLAS.md) 2.5–2.29 requires accurate daily observances and accents for the current General Roman Calendar and independently verified supported European national/diocesan calendars, offline, with per-user choice, manual accent overrides, and on-demand past/future date inspection. [Installed desktop #7](https://github.com/moritzbrantner/moenarch-linux/issues/7) owns user-visible consumption, [installer #8](https://github.com/moritzbrantner/moenarch-linux/issues/8) packages data for fully offline installation, and [release #12](https://github.com/moritzbrantner/moenarch-linux/issues/12) qualifies the exact shipped artifact.
- **Decision:** Resolve observances, proper-calendar precedence, principal named observance and applicable liturgical color **during preparation/build of versioned calendar data**, not by shipping a full runtime liturgical-rule computation engine. The installed KDE experience performs local lookups by supported jurisdiction and selected civil date using **one shared authoritative packaged dataset/lookup contract** for both the actual daily accent and on-demand calendar explanations. Different consumers must not independently calculate precedence or maintain competing hardcoded tables.
- **Data contract:** The generated dataset carries its data/schema version, source/rule provenance and attribution/licensing evidence, explicitly supported country/diocese identities, and a declared **bounded date coverage range**. Preserve enough independently inspectable reference/evidence to verify the chosen principal observance and color for each supported date. Choose exact serialization, initial year range and generator implementation from measured artifact compatibility and verified source coverage; do not silently declare unverified calendar or date support. Missing/out-of-range/unverifiable entries produce an explicit unavailable result, never a fabricated observance or seasonal-color guess.
- **Build versus runtime:** A pinned, testable **build-time** generator or data transformation may implement calendar rules and source normalization; the choice excludes maintaining a general rule engine *in the installed desktop runtime*. Generation must be repeatable against pinned input/source versions and comparison fixtures, and must validate movable dates, precedence and jurisdiction-specific observances against independent authoritative examples. Runtime lookups require no online provider, hidden downloads, location requests, user account or data generation.
- **Ownership and upgrades:** Package the same generated data as a versioned system-owned artifact in the offline ISO and installed system. Deliver revisions through ordinary native OS/package updates rather than a separate daily/calendar network updater. Keep the installed dataset shared while each local account retains its own explicitly chosen jurisdiction and automatic/fixed accent state; selecting another date only previews that date and cannot alter today's live accent.
- **Alternative declined:** Option B, computing liturgical observances from the full national/diocesan rule set each time they are requested inside the desktop runtime. Build-time rule evaluation remains allowed and is expected where needed to generate authoritative entries.
- **Independent evidence:** Test repeatable generation, version/source/coverage metadata, at least one movable observance and local-precedence difference per actually supported jurisdiction, unsupported-date handling, and lookup agreement between accent and selected-date explanations. On an installed network-disabled KDE session, verify day rollover, past/future date browsing, distinct per-account calendar choices, fixed manual accents, and dataset version matching the candidate ISO. This document records architecture, **not** implemented calendar coverage or QEMU acceptance.
