# Architecture

## Ownership boundary

Moenarch Linux is an Arch Linux derivative, not a fork of every Arch component.

Arch remains upstream authority for the Linux kernel, pacman, systemd, the core userspace, and the standard package repositories. Moenarch owns the distribution image, release identity, installation experience, defaults, validation, and Moenarch-specific system tooling.

The project should only fork or replace a lower-level Arch component when a concrete Moenarch requirement cannot be satisfied cleanly by composition or extension.

## Project integration boundary

Moenarch integrates the broader source landscape by composition. It owns a catalog of repository identities and exact source revisions plus the deterministic mechanics for acquiring and validating those checkouts. It does not vendor those repositories, publish their packages on their behalf, or replace their repository-local setup and toolchain authority.

`moenarch-projects` therefore operates as a source acquisition and reconciliation boundary:

1. catalog entries pin exact Git revisions;
2. missing projects may be cloned explicitly;
3. already-matching clean projects are verified no-ops;
4. changed remotes, local modifications, revision drift, or non-Git paths are conflicts and remain untouched;
5. project-specific dependency installation, builds, tests, and services stay owned by each project.

This keeps dependency direction clear: Arch supplies the operating-system substrate, Moenarch composes a development workspace, and the individual repositories remain authoritative for their own code.

## Initial delivery path

The first release path is:

1. Archiso `releng` profile as the upstream live-media foundation.
2. A small Moenarch overlay containing identity and test instrumentation.
3. A deterministic build wrapper that records the exact archiso version and image checksum.
4. QEMU boot verification against the generated ISO.
5. Installation testing onto an empty virtual disk.
6. A locked project catalog and workspace reconciler available in both live and installed systems.

## Build inputs

The repository keeps Moenarch-owned configuration separate from the packaged Archiso profile. `scripts/prepare-profile` copies the installed `releng` profile into a generated work tree and overlays `archiso/moenarch` on top of it.

This avoids vendoring Arch's bootloader configuration while preserving a clear review boundary for Moenarch changes. The exact Archiso package version used for a build is recorded next to the ISO artifact.

Project revisions are independently pinned in `projects.lock.tsv`; ordinary project bootstrap never follows a moving default branch. Updating that catalog is an explicit source-input change.

A future supply-chain slice should pin the Arch package snapshot used for release builds. Until then, builds are deterministic with respect to a fixed repository commit and fixed Arch package state, but are not claimed to be bit-for-bit reproducible across changing Arch mirrors.
