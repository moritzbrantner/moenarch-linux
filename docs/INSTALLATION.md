# Installation

Moenarch Linux does not yet expose a stable user-facing installer. The current installation path is an acceptance harness whose job is to prove that a generated live image can install a minimal Moenarch system onto an empty disk and boot that installed system independently.

## Acceptance harness

The harness is intentionally opt-in and destructive. It has no default installation disk. It only runs when the live kernel receives both:

- `moenarch.autoinstall=1`
- `moenarch.install_device=/dev/<explicit-disk>`

Before writing anything it verifies that the target exists, is a whole writable disk, is not mounted, and is at least 4 GiB.

The current CI installation uses a blank 8 GiB QEMU disk and creates:

1. a small GPT BIOS boot partition;
2. an ext4 root partition;
3. a minimal `base + linux + grub` Arch system;
4. Moenarch release identity and hostname;
5. a BIOS GRUB installation configured for serial boot evidence.

CI then stops the installer VM, removes the live ISO from the boot path, boots the virtual disk by itself, and requires the installed guest to emit `MOENARCH_INSTALLED_BOOT_OK` together with `ID=moenarch`.

This harness is not the future interactive installer. A small Rust installer will later own user choices, disk planning, profiles, validation, and recovery while continuing to delegate low-level Arch operations where appropriate.
