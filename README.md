# Moenarch Linux

Moenarch Linux is an Arch Linux-derived distribution aiming to offer a cohesive everyday desktop that uses the power of Linux to help people grow closer to the Christian faith. Its initial faith-oriented experience prioritizes practicing Christians and explicitly follows the Catholic liturgical and catechetical tradition. The system also retains its engineering goals: a small, understandable system surface, deterministic verification, and a first-class developer environment.

The project starts thin: Arch remains the upstream authority for the kernel, pacman, systemd, and the base package ecosystem. Moenarch owns distribution identity, image composition, installation, defaults, verification, and—where justified over time—its own packages and system tooling.

The [Decision Atlas](docs/DECISION-ATLAS.md) records approved product direction and unresolved questions. The [roadmap](docs/ROADMAP.md) tracks the delivery milestones; it does not approve specific desktop or devotional features on its own.

## First user-facing milestone

Offer a polished, approachable **KDE Plasma** desktop with familiar mouse-first windows, menus, and settings, and a restrained, warm **classical Catholic visual identity**: subtle accent colors that follow the Catholic liturgical day or season automatically, calendars starting on Sunday, and AD/BC era labels rather than CE/BCE. Its everyday experience should respect the dignity of the human soul. More explicitly Christian applications can follow later. See the [Decision Atlas](docs/DECISION-ATLAS.md) for approved direction and open details.

## Try before installing

Boot the installation media into a working live KDE Plasma desktop to explore Moenarch and check hardware before making changes to disk. Start a guided graphical installation explicitly through **Install Moenarch**; the desktop itself must not start installation automatically (Decision 4.2). The USB contains the packages needed to install the standard KDE Plasma system and boot it afterward **without internet access** (Decision 4.4). The graphical installer selects **unencrypted storage by default**, while allowing users to choose encrypted storage (Decision 4.6).

## Engineering foundation

1. Build a bootable Moenarch Linux ISO from Archiso's `releng` profile.
2. Prove the image boots under QEMU and identifies itself as Moenarch Linux.
3. Install onto a blank virtual disk and boot the installed system.
4. Introduce declarative system profiles and Moenarch-owned packages.
5. Add a small Rust installer and deterministic system verification.

The repository is intentionally starting with the smallest slice that can prove a real distribution artifact end to end.
