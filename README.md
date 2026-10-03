# Moenarch Linux

Moenarch Linux is an Arch Linux-derived distribution focused on a small, understandable system surface, deterministic verification, and a first-class developer environment.

The project starts thin: Arch remains the upstream authority for the kernel, pacman, systemd, and the base package ecosystem. Moenarch owns distribution identity, image composition, installation, defaults, verification, and—where justified over time—its own packages and system tooling.

## Project workspace from first boot

The live image and freshly installed system include `moenarch-projects`, a deterministic source-workspace reconciler backed by an exact-revision catalog. The initial catalog integrates 47 repositories across foundation, tooling, templates, media, spatial, and game-development groups without copying their implementation into the distribution.

```bash
moenarch-projects groups
moenarch-projects list default
moenarch-projects bootstrap default ~/src/moenarch
moenarch-projects bootstrap all ~/src/moenarch
```

Existing checkouts are never silently reset or updated. Matching clean checkouts are verified no-ops; revision drift, changed remotes, local edits, and non-Git directories are reported as conflicts. See [docs/PROJECTS.md](docs/PROJECTS.md).

## Initial milestones

1. Build a bootable Moenarch Linux ISO from Archiso's `releng` profile.
2. Prove the image boots under QEMU and identifies itself as Moenarch Linux.
3. Install onto a blank virtual disk and boot the installed system.
4. Make the locked multi-repository developer workspace available from live and installed systems.
5. Introduce declarative system profiles and Moenarch-owned packages.
6. Add a small Rust installer and deterministic system verification.

The repository is intentionally starting with the smallest slices that prove real distribution artifacts and developer workflows end to end.
