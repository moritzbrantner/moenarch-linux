# Project workspace integration

Moenarch Linux treats the user's source repositories as a development workspace, not as distribution-owned source.

The live image and every newly installed system ship:

- `/usr/local/bin/moenarch-projects`, an idempotent workspace reconciler;
- `/usr/local/share/moenarch/projects.lock.tsv`, a catalog of exact source revisions.

The initial catalog integrates 47 repositories across six capability groups: `foundation`, `tooling`, `templates`, `media`, `spatial`, and `games`. A curated `default` group contains the shared foundations and development tooling. The special `all` group selects the whole catalog.

## Commands

```bash
moenarch-projects groups
moenarch-projects list default
moenarch-projects status all ~/src/moenarch
moenarch-projects bootstrap default ~/src/moenarch
moenarch-projects bootstrap spatial ~/src/moenarch
moenarch-projects bootstrap all ~/src/moenarch
```

Bootstrap is explicit network/dependency acquisition. It clones missing repositories and checks out the exact revision recorded in the catalog. It does not publish packages, install project-specific dependencies, or replace each repository's own setup/toolchain authority.

Existing checkouts are protected. A checkout is considered reconciled only when its `origin` URL, HEAD revision, and clean working tree all match the lock catalog. Any remote drift, revision drift, local modification, or non-Git directory is reported as a conflict and left untouched.

This keeps the distribution boundary directional:

1. Arch owns the operating-system substrate.
2. Moenarch owns the workspace catalog and deterministic source acquisition.
3. Each project owns its source, toolchain pins, dependency setup, tests, and runtime behavior.

Updating project revisions is therefore an explicit Moenarch catalog change. Ordinary bootstrap never follows moving default branches.
