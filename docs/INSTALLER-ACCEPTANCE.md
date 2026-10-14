# Offline KDE installer — acceptance and safety

Authority: Decision Atlas 4.2/4.4/4.6/4.8/4.10, issue #8.
Recovery layout compatibility: Decisions 5.4/5.6 and issue #10.

This is **development candidate** configuration, not a published/released or
fully qualified installation ISO. Building a bootable ISO and seeing a serial
boot marker are **not** evidence that graphical installation or recovery work.

## Composition

- Archiso releng supplies kernel, bootloader and ISO runtime.
- KDE Plasma X11/SDDM provides the live try-before-install experience. Only
  the live session has passwordless autologin.
- The established Calamares 3.4.2 graphical installer is built from the
  checksum-verified upstream tarball as a *local build artifact*, and is shipped
  inside the ISO. Only one narrowly documented downstream patch disables the
  unsupported replace/alongside UI; manual partitioning is also disabled.
- Calamares **unpacks the ISO's own squashfs filesystem**; no package mirror or
  installer-network bootstrap is required.
- Installation is UEFI-only (the live ISO can also boot in BIOS mode);
  the launcher rejects BIOS installation before any destructive step. Secure
  Boot support is unresolved and must not be advertised.
- Whole-disk erase is the only guided install type. The UI requires the user
  to choose it, review the selected disk and confirm erasure. The unencrypted
  option is the unchecked encryption checkbox; the other is LUKS2 encrypted.
- A 1 GiB unencrypted EFI System Partition mounted at `/boot` supports
  systemd-boot. The Btrfs root spans the remaining disk and uses subvolumes
  `@` (OS/system configuration), `@home` (personal files), `@cache`,
  `@log` and `@snapshots`. For encrypted installs, *all Btrfs
  subvolumes* reside inside the LUKS2 volume. An unlocked separate
  `/boot` partition is a security trade-off; do not describe this as
  encryption of every physical partition.
- SDDM local-account login requires the password set in the installer;
  no installed-system autologin or build-only local package repository remains.
  Installed pacman configuration uses the official Arch `core` and `extra`
  repositories (native updates occur later, with consent and pre-update
  checkpoints per issue #9).

**Recovery contract (not recovery implementation):** future root snapshot
restore must never revert `@home`. Kernels/initramfs live on the ESP outside
Btrfs root snapshots; issue #10 must preserve or restore a *matching* kernel
and boot entry for the selected OS checkpoint, and provide a boot-accessible
restore UI with explicit confirmation. Never treat subvolumes alone as
implemented recovery. Home preservation is not a backup; media failure,
mistaken erase, and LUKS unlock-secret loss can still destroy data.

## Build and inspect

On an Arch Linux machine with internet during image construction,
root permissions and enough free disk space:

```bash
sudo pacman -Syu --needed archiso git base-devel
sudo ./scripts/build-iso
( cd out && sha256sum -c SHA256SUMS )
./scripts/verify-iso-payload out/moenarch-linux-*.iso
./scripts/test-iso-boot out/moenarch-linux-*.iso
```

The package bootstrap compiles pinned upstream Calamares; it does **not**
access the network while installing from the resulting image.
Record `out/build-manifest.txt` and `out/SHA256SUMS`, plus the exact source
commit and the full GUI acceptance evidence. The static CI job checks safety
contracts; the ISO CI job builds actual payload, extracts it and tests the
existing serial boot marker. Neither proves usable KDE installation.

## Network-disabled UEFI QEMU acceptance matrix (manual until automated)

Use raw virtual disks for whole-device SHA256 checks; qcow2 host metadata can\nchange even without guest filesystem writes. Use OVMF (Arch `edk2-ovmf`, Ubuntu `ovmf`) and QEMU with network explicitly
absent; boot the ISO, *not* a network mirror. Allocate at least 4 GiB RAM
and a 32 GiB **throwaway** target disk; store all VM disk images outside any
important directory. Never execute disk destructive commands on host disks.

One illustrative invocation (replace OVMF paths with installed package paths;
copy firmware VARS separately for each VM):

```bash
truncate -s 32G /tmp/moenarch-target.raw
cp /usr/share/OVMF/OVMF_VARS_4M.fd /tmp/moenarch-vars.fd
qemu-system-x86_64 -machine q35,accel=tcg -m 4096 -smp 4 \
  -drive if=pflash,format=raw,readonly=on,file=/usr/share/OVMF/OVMF_CODE_4M.fd \
  -drive if=pflash,format=raw,file=/tmp/moenarch-vars.fd \
  -drive if=virtio,format=raw,file=/tmp/moenarch-target.raw \
  -cdrom out/moenarch-linux-YYYY.MM.DD-x86_64.iso \
  -nic none -display gtk
```

For separate encrypted and unencrypted runs, use *fresh* target disks.
Run twice with these observations and screenshots/logs:

1. Boot into usable KDE Plasma, launch Dolphin/Kate/Firefox (local `file:`
   URL)/Gwenview/Haruna and open system settings. Show the visible **Install
   Moenarch** icon, real mouse interactions and no network adapter.
2. Before launching, after launching, and after cancelling **before the final
   erase confirmation**, compare the target disk's full SHA256 with its
   baseline; it must be unchanged. Repeat cancellation once after navigating
   through settings. (Never hash a mounted/running target after writes.)
3. Select a known, **dedicated** QEMU target disk in the GUI; verify make,
   size, name/identifier and explicit whole-disk erase warning. No disk can be
   silently chosen; no resize, alongside, replace or manual path is shown.
   Check the UI explains that *unencrypted* disks are readable to a thief
   without a login password.
4. In run A, leave encryption unchecked. In run B, deliberately select
   encryption and provide an unlock passphrase; confirm no silent fallback,
   and that missing/incorrect passphrases do not mount the volume. A separate
   account password is mandatory. Confirm installation without any network
   traffic or missing package downloads.
5. Reboot **without ISO** (remove `-cdrom`), enter disk unlock if applicable,
   reach SDDM login, test **wrong password** fails, **right password** opens
   KDE Plasma. Verify essential applications work entirely offline.
6. From the installed system inspect `findmnt -R /`, `btrfs subvolume list /`,
   `lsblk -f`, and `/etc/pacman.conf`. Prove `@`, `@home` separation,
   encrypted root under LUKS2 where selected, and direct Arch `core` and
   `extra` mirror configuration. Record screenshots and exact commands.
7. Two-disk safety: attach a *second* seeded disposable data/OS disk, record
   its **whole-disk** checksum when powered off, select only target disk, then
   shut down and compare seed disk checksum. Absolutely no changes allowed
   to non-target disk. Confirm erase consent on target even when it carries
   an existing OS. Test absent/invalid target: no write, useful error.
8. Issue #10 independently must later reproduce a broken-update restore,
   explicit decline then explicit confirm, and personal-file hash survival,
   **both encryption modes**, without a functioning KDE or installation USB.

**Do not close #8 or publish #12** until actual graphical QEMU runs,
screenshots, encrypted/unencrypted completed installations, target-safety
checks and installed-login results have been recorded against the exact
candidate image. If VM capabilities are missing, record the limitation rather
than marking any unchecked acceptance as passed.
