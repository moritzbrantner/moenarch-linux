# Roadmap

This document tracks delivery milestones. The [Decision Atlas](DECISION-ATLAS.md) is the authority for user-facing product direction: a cohesive everyday Linux desktop that helps people grow closer to the Christian faith (1.1), with the initial faith experience primarily serving practicing Christians (1.3) within an explicitly Catholic liturgical and catechetical framework (1.5).

The first user-facing milestone is the **quality and usability of the desktop itself**, with subtle Catholic defaults (Decisions 2.2–2.3). The Arch-based image, installation, developer environment, and verification stages remain engineering foundations for that experience. More explicitly Catholic applications are later work. Under Decisions 2.5 and 2.7, subtle desktop accents automatically follow the applicable liturgical day or season of the **current General Roman Calendar**.

## First product milestone — A dignified Catholic-contextual desktop

- Boot installation media into a usable **KDE Plasma live desktop** to explore the system and check hardware before committing to installation; a visible **Install Moenarch** action starts a guided graphical installer on request (Decision 4.2). Simply booting or browsing the live system must not alter disks. The initial installer requires an **explicitly selected dedicated target disk**, with confirmation of destructive consequences; it does **not** offer guided resizing/install-alongside another OS on the same disk (Decision 4.10). The standard KDE Plasma installation must also complete entirely **offline** from media containing the required packages, followed by a successful offline boot from the installed disk (Decision 4.4).
- Boot the installed system to a **graphical account-password login screen** and only then open KDE Plasma (Decision 4.8). The login password is distinct from optional disk encryption (Decision 4.6). Configure a **familiar, mouse-first** desktop with conventional panels, menus, overlapping windows and discoverable controls (Decisions 3.2 and 3.4); ordinary tasks must not require memorized shortcuts or automatic tiling.
- Present a **warm, classical Catholic visual identity** through restrained sacred-art, architectural and typographic influences (Decision 3.6) alongside accent colors automatically reflecting the **current General Roman Calendar** (Decisions 2.5 and 2.7). Keep normal interface controls legible, usable and free from excessive ornamentation; do not require devotional applications.
- Show **Sunday first** in the desktop calendar and use **AD/BC** where Moenarch-controlled date displays render explicit era names.
- Provide a **small but usable preinstalled essentials collection** for browsing the web, managing files, editing plain text, basic media viewing and ordinary system utilities (Decision 6.6). These are available in the installed system without network access or additional installs; a larger office/media/communication suite is not an initial requirement.
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

- Retain the existing explicit-opt-in, test-only installation proof. The approved first-use experience calls for a separate **guided graphical installer launched from the live Plasma desktop**, not an automatically executed disk write (Decision 4.2). Include everything needed for the standard KDE Plasma installation on the USB image; build and verify the normal user-facing installation with networking disabled (Decision 4.4). **Unencrypted storage is preselected**, and users can explicitly opt into encryption after seeing the data-protection trade-off; independently verify both offline installation paths (Decision 4.6). The installed system layout must support the **built-in pre-update recovery and non-KDE restore path** (Decision 5.4) **without rolling back personal files** (Decision 5.6), for both encrypted and unencrypted installations; do not preselect a filesystem merely from these product decisions.
- Partition only the **explicitly chosen dedicated installation disk**, after specific destructive confirmation; do not shrink an existing Windows/Linux partition or configure guided dual boot (Decision 4.10). Use QEMU to test both the blank target and a populated non-target disk, verifying other disks are unchanged.
- Install a minimal Moenarch system using standard Arch installation primitives.
- Configure bootloader, locale, **local user account with password**, networking, and release identity. First installed boot requires password login (Decision 4.8), independently of whether optional disk encryption was selected.
- Reboot from the dedicated installation disk and verify the installed system independently of the live image. Reject missing or ambiguous target selection without writes.

### Stage 3 — Declarative profiles and integrated desktop

- Define `base`, `desktop`, `developer`, and `server` as composable package/service policies.
- Keep one distribution and one installer rather than separate editions.
- Add machine-readable profile validation.
- Make the `desktop` profile a genuinely usable, cohesive **KDE Plasma** experience rather than merely an installable package list. Include the approved **essential everyday applications** (Decision 6.6) in the real installed system, and verify offline availability and actual browser, file-manager, text-editor, basic media-viewer and settings workflows alongside account-password login and the mouse-first desktop user journey.

### Stage 4 — Moenarch packages

- Introduce signed Moenarch package repository infrastructure only for software Moenarch owns.
- Package release identity, installer, CLI, and verification tooling.

### Stage 5 — Rust system tooling

- Add a small Rust CLI for installer orchestration, diagnostics, verification, and reconciliation.
- Keep ownership boundaries explicit: Moenarch composes Arch unless a justified divergence is required. Do not create a Moenarch-owned intermediate mirror or snapshot gate for upstream native package updates merely to deliver the initial desktop (Decision 7.2).

## Public installation-image releases

- The normal public ISO download is a **versioned, deliberately promoted release artifact**, not a moving pointer to the newest CI/default-branch image (Decision 7.4). Development/CI images may exist separately, clearly distinguished from public releases.
- Promote the **same candidate ISO** only after its integrated boot, usable live KDE Plasma, guided fully offline installation, password login and real installed-desktop journey are independently verified. Retain artifact identity, source revision, build-input manifest, checksum and acceptance evidence with the public release; no package-list-only or text-only boot proof suffices.
- Preserve an identifiable release download so users can tell which tested image they obtained. Do not infer an automatic publication trigger or fixed release cadence. **Comprehensive QEMU acceptance of the exact candidate—including live KDE, the full offline installer, installed desktop and user-confirmed restoration after a deliberately failed update—is sufficient for the first public ISO**; a physical-PC smoke test is **not required** before its first release (Decision 7.6). State clearly that VM evidence is not proof of physical hardware compatibility.
- Installing this versioned ISO does **not** pin ongoing native updates to its release date: installed systems follow the official Arch rolling repositories under Decision 7.2.

## System maintenance experience

- Source ongoing **native package updates directly from the official Arch rolling repositories**, not a Moenarch-managed staged repository or package-snapshot release gate (Decision 7.2). Availability never overrides the user's chosen update-consent setting or the requirement for coherent full-system upgrades and recovery points.
- Notify the installed KDE Plasma user when system updates are available; **require explicit approval to install by default** (Decision 5.2).
- Offer a discoverable, persistent desktop setting to switch to **automatic update installation** and back to user-approved updates; the selected mode must govern the real update process, not only the interface.
- Verify notification, manual approval, automatic mode, persistence across restart, and clear update results/failure indications in a real installed desktop with controlled update inputs.
- **Create a usable pre-update recovery point** and provide a **built-in restore path that remains accessible if KDE or the normal system fails to start** (Decision 5.4). Verify restoration after an intentionally breaking update without relying on the live desktop or only on terminal commands. **Restore only the OS, applications and relevant system configuration while preserving personal files**, including documents created or edited after the recovery point (Decision 5.6). **Offer a comprehensible built-in recovery choice without a working desktop, but perform no system rollback until the user explicitly confirms what will be restored** (Decision 5.8).

## Graphical application management

- Offer a discoverable, everyday **graphical way to find, install, launch and remove ordinary desktop applications** on the installed KDE Plasma system. Prefer **native packages from the Arch repositories** when an application is available through both Arch and Flatpak (Decision 6.2).
- Identify each application's package source clearly. Use the existing Arch package manager for native installations rather than inventing another package-management authority; do not silently install a Flatpak in place of the preferred native package.
- Keep the **default preinstalled selection essential-focused** (Decision 6.6). Offer fuller office, media and communication software through user-selected installs rather than preloading a broad suite.
- Verify an actual native application install, launch and removal from the installed desktop, plus consistent source preference when the same application has multiple available formats. **Exclude AUR entries and installation actions from the initial graphical catalog** (Decision 6.4); it must not misrepresent community AUR recipes as official Arch packages. Flatpak may remain available separately but is not required in the initial slice (Decision 6.2). The preinstalled essential set is approved by Decision 6.6.

## Future product journeys

After the first product milestone, independently usable Catholic applications and richer integration may advance the approved direction. Do not presume a particular prayer app, research assistant, content library, or content-control mechanism before further owner decisions. A Sunday-first **desktop calendar** is already approved under 2.3; a complete liturgical-calendar application is not.
