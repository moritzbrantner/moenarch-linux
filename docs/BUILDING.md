# Building

Moenarch Linux images are built with Archiso on an Arch Linux host.

Install `archiso`, then run:

```bash
./scripts/build-iso
```

The build wrapper prepares a generated profile under `.build/`, invokes `mkarchiso`, writes the ISO to `out/`, and records checksums plus the Archiso package version used for the build.

The repository does not vendor Arch's full `releng` profile. `scripts/prepare-profile` copies the profile shipped by the installed Archiso package and overlays only Moenarch-owned configuration. Release builds should therefore record and eventually pin the Arch package snapshot in addition to the source commit.
