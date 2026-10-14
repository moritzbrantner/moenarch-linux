# Moenarch Linux

Moenarch Linux is an Arch Linux-derived distribution aiming to offer a cohesive everyday desktop that uses the power of Linux to help people grow closer to the Christian faith. Its initial faith-oriented experience prioritizes practicing Christians. The system also retains its engineering goals: a small, understandable system surface, deterministic verification, and a first-class developer environment.

The project starts thin: Arch remains the upstream authority for the kernel, pacman, systemd, and the base package ecosystem. Moenarch owns distribution identity, image composition, installation, defaults, verification, and—where justified over time—its own packages and system tooling.

The [Decision Atlas](docs/DECISION-ATLAS.md) records approved product direction and unresolved questions. The [roadmap](docs/ROADMAP.md) tracks the delivery milestones; it does not approve specific desktop or devotional features on its own.

## Initial milestones

1. Build a bootable Moenarch Linux ISO from Archiso's `releng` profile.
2. Prove the image boots under QEMU and identifies itself as Moenarch Linux.
3. Install onto a blank virtual disk and boot the installed system.
4. Introduce declarative system profiles and Moenarch-owned packages.
5. Add a small Rust installer and deterministic system verification.

The repository is intentionally starting with the smallest slice that can prove a real distribution artifact end to end.
