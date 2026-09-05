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
