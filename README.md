# Moenarch Linux

Moenarch Linux is an Arch Linux-derived distribution aiming to offer a cohesive everyday desktop that uses the power of Linux to help people grow closer to the Christian faith. Its initial faith-oriented experience prioritizes practicing Christians and explicitly follows the Catholic liturgical and catechetical tradition. The system also retains its engineering goals: a small, understandable system surface, deterministic verification, and a first-class developer environment.

The project starts thin: Arch remains the upstream authority for the kernel, pacman, systemd, and the base package ecosystem. Moenarch owns distribution identity, image composition, installation, defaults, verification, and—where justified over time—its own packages and system tooling.

The [Decision Atlas](docs/DECISION-ATLAS.md) records approved product direction and unresolved questions. The [roadmap](docs/ROADMAP.md) tracks the delivery milestones; it does not approve specific desktop or devotional features on its own.

## First user-facing milestone

Offer a polished, approachable **KDE Plasma** desktop with familiar mouse-first windows, menus, and settings, and a restrained, warm **classical Catholic visual identity**: subtle accent colors that follow the Catholic liturgical day or season automatically, calendars starting on Sunday, and AD/BC era labels rather than CE/BCE. The **current General Roman Calendar is the default**; each user may explicitly choose a supported **national or diocesan calendar**, with independent preferences for each local account and the General Roman default for new accounts; versioned data is packaged for offline use (Decisions 2.7, 2.9, 2.11 and 2.13). Its everyday experience should respect the dignity of the human soul. A **focused set of essential everyday apps**—web browsing, file management, basic text editing, media viewing and system utilities—will be preinstalled and usable offline, rather than a comprehensive office/communication suite (Decision 6.6). More explicitly Christian applications can follow later. See the [Decision Atlas](docs/DECISION-ATLAS.md) for approved direction and open details.

## Try before installing

Boot the installation media into a working live KDE Plasma desktop to explore Moenarch and check hardware before making changes to disk. Start a guided graphical installation explicitly through **Install Moenarch**; the desktop itself must not start installation automatically (Decision 4.2). The USB contains the packages needed to install the standard KDE Plasma system and boot it afterward **without internet access** (Decision 4.4). The installer requires an **explicitly selected dedicated target disk** and clear confirmation before overwriting its contents; guided dual boot/partition resizing is deferred, and other disks must remain unchanged (Decision 4.10). The first installer **automatically generates a supported recovery-compatible partition layout** with system and personal-file preservation boundaries; custom partition editing is deferred (Decision 4.16). **Reinstalling Moenarch from the installation USB is a clean, disk-erasing installation**, not a personal-file-preserving repair; back up important files to separate storage before confirming (Decision 8.4). **The first installed system requires UEFI firmware**; installed legacy-BIOS support is deferred, even if the live image can boot in BIOS mode (Decision 4.14). **Secure Boot support is deferred**: UEFI systems must have Secure Boot disabled by the user if it prevents booting Moenarch, with clear guidance on the implications (Decision 4.12). The graphical installer selects **unencrypted storage by default**, while allowing users to choose encrypted storage (Decision 4.6). It creates a local user with a password, and the installed system **requires password login before entering KDE Plasma** (Decision 4.8). A login password is not a substitute for disk encryption.

## Installation image releases

The normal public Moenarch installation image will be a **versioned, deliberately published ISO** that has passed integrated testing of the actual live desktop, guided offline installation and installed KDE Plasma experience. Passing CI builds remain development artifacts until separately accepted and released (Decision 7.4). **Full QEMU acceptance, including installed UEFI boot with Secure Boot disabled and failure recovery, is sufficient for the first public image; installed BIOS support and physical hardware tests are not mandatory release gates**, and release notes must disclose the Secure Boot limitation and must not imply hardware support that was not actually tested (Decisions 4.12 and 7.6). Installed computers continue receiving native updates directly from Arch (Decision 7.2).

## System updates

Native system packages receive available updates directly from the **official Arch rolling repositories**, without a separate Moenarch-managed staging feed (Decision 7.2). The installed desktop will notify people when system updates are available. By default, updates require user approval, and a persistent setting allows switching to automatic installation and back (Decision 5.2). Updates must establish a usable pre-update recovery point, with built-in recovery even if the normal graphical desktop cannot start (Decision 5.4). Restoring must revert broken system state while **preserving personal documents and files** (Decision 5.6). The recovery option is accessible without a working desktop, but **restoration requires explicit user confirmation** rather than an automatic rollback after failed boot (Decision 5.8).

## Personal-file backups

The initial release does **not include a required built-in personal-file backup setup or restore experience** (Decision 8.2). The pre-update recovery feature reverts a broken system while preserving files that still exist, but **is not a backup**; clean reinstallation of the selected disk also does **not** preserve personal files (Decision 8.4): it does not protect against accidental deletion, file corruption, drive failure or theft. Keep independent copies of important files on separate storage, especially before confirming a disk-erasing installation. Optional backup tools can be installed separately; no automatic cloud backup is assumed.

## Installing applications

The standard desktop includes only the **essential applications needed for everyday use**; users can add other software through the graphical catalog (Decision 6.6). The intended graphical software experience prefers **native Arch repository packages** for desktop applications when both a native package and a Flatpak are available. Sources must be visible, and Flatpak is not forbidden. **AUR packages are excluded from the initial graphical catalog**, while experienced users may choose to use AUR tooling separately (Decisions 6.2 and 6.4).

## Engineering foundation

1. Build a bootable Moenarch Linux ISO from Archiso's `releng` profile.
2. Prove the image boots under QEMU and identifies itself as Moenarch Linux.
3. Install onto a blank virtual disk and boot the installed system.
4. Introduce declarative system profiles and Moenarch-owned packages.
5. Add a small Rust installer and deterministic system verification.

The repository is intentionally starting with the smallest slice that can prove a real distribution artifact end to end.
