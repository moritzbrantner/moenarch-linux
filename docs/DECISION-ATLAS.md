# Moenarch Linux Decision Atlas

This is the owner-approved authority for **what Moenarch Linux should offer its users**. [The roadmap](ROADMAP.md) tracks delivery milestones, while [architecture](../ARCHITECTURE.md) defines the distribution's existing ownership boundaries. A Decision records intent, not implementation, independent acceptance, or release readiness.

## Editing rules

- **Decision** and **Question** are the only semantic leaf kinds; headings organize user-facing capabilities.
- IDs remain stable. A Question is marked `[question]` and is not an approval. When answered, keep the Question and append a new Decision citing `Answers <ID>`.
- Preserve historical Decisions on revision, citing `Supersedes <ID>` in a later Decision rather than silently rewriting the owner's original choice.
- Neither existing code nor agent proposals confer owner approval. Do not treat unanswered Questions as permission to pick a consequential product default.
- Product intent belongs here; implementation details and acceptance evidence belong in code, tests, and issues.

## 1. Christian-oriented everyday desktop

- **1.1 A cohesive Linux desktop in service of Christian faith.**  
  Status: owner-approved 2026-10-14.  
  Moenarch Linux should take inspiration from Omarchy's integrated-distribution direction while using the capabilities of Linux to help people draw closer to the Christian faith. It should aspire to be a cohesive, usable everyday operating system, not merely a renamed distribution or a collection of disconnected applications. This does **not** yet select a compositor, particular application, devotional workflow, content provider, filtering policy, or other unasked-for implementation detail.

- **1.2** [question] **Whom should the initial Christian experience primarily serve?**  
  Answered 2026-10-14 by Decision 1.3 (option A); retained as the historical Question.  
  Should the initial faith experience primarily help **practicing Christians** deepen their existing faith (A), or primarily introduce **people exploring Christianity** to its teaching and practice (B)?

- **1.3 Prioritize practicing Christians in the initial faith experience.**  
  Status: owner-approved 2026-10-14. Answers 1.2 (option A).  
  The first Christian-oriented experience should primarily serve people who already practice Christianity and help them deepen their existing faith. Discovery-first onboarding is **not** the initial organizing goal. This does not exclude other users or prohibit exploratory experiences later.

- **1.4** [question] **Which tradition should shape the default faith experience?**  
  Answered 2026-10-14 by Decision 1.5 (option A); retained as the historical Question.  
  Should the initial built-in experience explicitly follow the **Catholic liturgical and catechetical tradition**, or should it be **cross-denominational and Scripture-first** without one tradition's calendar and teaching framework as its default? This choice affects the content, language, and daily experience. Neither alternative approves particular texts, licenses, applications, or delivery mechanisms.

- **1.5 Catholic tradition as the default Christian framework.**  
  Status: owner-approved 2026-10-14. Answers 1.4 (option A).  
  Moenarch's initial Christian-oriented experience should explicitly follow the **Catholic liturgical and catechetical tradition**, rather than a denomination-neutral Scripture-first presentation. Catholic faith is part of the distribution's chosen Christian identity and the default framework for future faith-specific content and workflows. This does not determine which prayer texts, liturgical calendar sources, licensed resources, or applications to ship, nor does it prohibit additional Christian resources.

## 2. Practicing the faith through the desktop

- **2.1** [question] **What should the first independently usable Catholic desktop experience accomplish?**  
  Answered 2026-10-14 by Decision 2.2: the owner explicitly prioritized the operating-system experience itself rather than any proposed app-first alternative. Retained as the historical Question.  
  Which user journey should be delivered first: **daily prayer and liturgical observance** (readings/prayers for the day), **Catholic study and source-grounded research** (finding and reading relevant Scripture/church texts), or **intentional computing and focus** (reducing distractions and supporting habits)? Choosing an initial journey prioritizes the first demonstrable outcome; it does not exclude the other experiences later.

- **2.2 First user-facing milestone is the Catholic-contextual desktop.**  
  Status: owner-approved 2026-10-14. Answers 2.1 (owner-provided alternative to A/B/C).  
  First deliver a cohesive, polished and genuinely pleasant everyday Linux desktop whose interactions and presentation **respect the dignity of the human soul**. The Catholic character should initially appear through subtle system-level context and conventions, not require users to launch conspicuously religious applications. More explicitly Christian and Catholic apps can follow in later milestones; they are not the initial product's acceptance criterion. The existing boot, installation and verification work remains a technical foundation, not a substitute for an experienced desktop.

- **2.3 Subtle Catholic conventions as system defaults.**  
  Status: owner-approved 2026-10-14.  
  The default desktop should reflect Catholic context in small, everyday details: **liturgical colors** in its visual language; **Sunday as the first day of the week** in calendars; and **AD/BC instead of CE/BCE** where dates are shown with historical era labels. These are experience requirements for the Moenarch-controlled desktop and its defaults, not claims that every unmodified third-party Linux program can be made to obey them. Decision 2.5 further specifies automatic calendar-driven liturgical accents.

- **2.4** [question] **How should liturgical colors affect the everyday desktop?**  
  Answered 2026-10-14 by Decision 2.5 (option A).  
  Should **A** the desktop's subtle accents reflect the liturgical day or season automatically, or **B** the system provide a stable Catholic-inspired color palette that users select independently of the calendar? Both should preserve legibility and restraint; this decision does not authorize unrelated devotional apps or additional background services.


- **2.5 Liturgical-calendar-driven desktop accents.**  
  Status: owner-approved 2026-10-14. Answers 2.4 (option A).  
  Subtle default desktop accents automatically reflect the current Catholic liturgical day or season. Keep the presentation restrained and legible. The calendar source, rite/locality scope, exact theme mechanics, and optional customization remain to be specified.

- **2.6** [question] **Which Catholic liturgical calendar governs the default daily accents?**  
  Answered 2026-10-14 by Decision 2.7 (option A); retained as the historical Question.  
  Should Moenarch follow the **current Roman Rite General Roman Calendar** by default, or the **traditional calendar associated with the 1962 Roman Missal**? The calendars can assign different observances and colors on the same date. This question selects the initial authoritative calendar, not whether other calendars or local observances could ever be supported.

- **2.7 Current General Roman Calendar as the default.**  
  Status: owner-approved 2026-10-14. Answers 2.6 (option A).  
  The **current General Roman Calendar of the Roman Rite** is the authoritative default for Moenarch's automatically selected liturgical accent colors (Decision 2.5), rather than the calendar associated with the 1962 Roman Missal. Daily colors should follow the applicable observance, not a naive fixed mapping of civil months to liturgical seasons. This does not select a particular data provider, approve local or diocesan variations, or rule out a future explicit selection of another Catholic calendar.

- **2.8** [question] **Where should Moenarch obtain the daily Roman liturgical calendar data for desktop accents?**  
  Answered 2026-10-15 by Decision 2.9 (option A); retained as the historical Question.  
  Should the first release **A** ship a locally available, versioned General Roman Calendar implementation/data set, updating it through ordinary OS/package updates without network requests when showing daily accents, or **B** use a maintained online Catholic liturgical-calendar data source for current observances, with a clearly documented local cache/fallback so offline installed desktops continue to work? Both must actually handle daily observance and color precedence under Decision 2.7, preserve privacy, and allow offline first use (4.4). This decision concerns the **authority and update dependency for calendar data**, not theme colors, a complete liturgical calendar app, or choosing a specific provider.

- **2.9 Versioned offline General Roman Calendar data for daily accents.**  
  Status: owner-approved 2026-10-15. **Answers 2.8 (option A).**  
  The initial Moenarch Linux desktop **ships the data or implementation needed to determine the current Roman Rite General Roman Calendar observance and its liturgical color locally**, as an identifiable, versioned part of the installed system and the offline installation image. The daily accent must work at first login, across day changes, and after restart **without fetching a calendar API, needing connectivity, or sending the current date or device information to an online provider**. Updates to calendar rules/data arrive through normal user-controlled OS/package updates (Decisions 5.2 and 7.2), not mandatory per-day network queries; an installation that has not been updated continues to behave consistently with its installed calendar version.  
  Resolve the applicable day or season and **observance precedence** under the already selected **current General Roman Calendar** (Decisions 2.5 and 2.7), including representative movable observances and a feast overriding an ordinary seasonal color. Preserve inspectable source, version and appropriate usage/licensing attribution; test known dates, date rollover, offline startup and the installed desktop's actual automatic accent change rather than substituting a fixed month-to-color table. Keep the accent subtle and readable. This is **a source and delivery decision**, not approval to build a full liturgical calendar application, select a particular library/content provider, adopt a localization or diocesan calendar policy, or fork KDE/Arch functionality unnecessarily. The installed-desktop journey remains in [#7](https://github.com/moritzbrantner/moenarch-linux/issues/7); the live/install media [#8](https://github.com/moritzbrantner/moenarch-linux/issues/8) must package that same source for offline first use, and release qualification [#12](https://github.com/moritzbrantner/moenarch-linux/issues/12) must prove it from the actual candidate image.


- **2.10** [question] **Should the initial desktop also support local Catholic liturgical calendars?**  
  Answered 2026-10-15 by Decision 2.11 (option B); retained as the historical Question.  
  Should the initial Moenarch desktop use **only the universal current General Roman Calendar** for everyone's daily liturgical accents (A), or allow people to **explicitly select a supported country or diocese** so the applicable local observances and colors are reflected (B)? Either choice keeps the General Roman Calendar as the default (2.7), and daily calendar data available locally without mandatory network access (2.9).

- **2.11 Selectable national and diocesan liturgical calendars.**  
  Status: owner-approved 2026-10-15. Answers 2.10 (option B); extends Decisions 2.7 and 2.9.  
  Keep the **current General Roman Calendar** as Moenarch's default, but provide a **discoverable, explicit selection** among supported **country-level and diocesan Roman Catholic calendars**. When one is selected, its supported national or diocesan observances and documented liturgical precedence must affect the **real KDE desktop's daily accent colors**, including days on which a local observance differs from the universal calendar. Use **versioned, locally installed calendar data/rules**, included with the offline image, so selection, date rollover and restart work without calendar API calls, location disclosure or connectivity (2.9). Update these sources through the approved OS/package update flow. Clearly label which national/diocesan calendars are actually supported; do not fabricate coverage of every jurisdiction, infer a user's location, or silently change their selection based on language or device location. Verify a selected supported national calendar and a supported diocesan calendar against authoritative observance examples on a **network-disabled installed KDE session**, as well as the General Roman default and persistence after reboot. This does not select calendar-data vendors, mandate a separate calendar app or decide whether the preference is per-user or device-wide.

- **2.12** [question] **Who owns the selected local liturgical calendar on a shared desktop?**  
  Unanswered.  
  When different people sign into the same Moenarch computer, should **A** each local account keep its own explicit country/diocese selection, with a new account starting from the General Roman Calendar, or **B** the device have one shared calendar choice applying to every account? Both must use the already approved packaged offline data (2.9) and preserve the explicitly selectable local-calendar experience (2.11).

## 3. Everyday desktop interaction

- **3.1** [question] **What interaction model should the first desktop prioritize?**  
  Answered 2026-10-14 by Decision 3.2 (option B); retained as the historical Question.  
  Should Moenarch start with a keyboard-first automatically tiling desktop and launcher-driven workflows, or a conventional mouse-first windowed desktop with familiar panels and overlapping windows? Both should be polished and usable. The choice is about the default first-minute experience, not prohibiting customization.

- **3.2 Mouse-first, familiar desktop as the initial interaction model.**  
  Status: owner-approved 2026-10-14. Answers 3.1 (option B, for now).  
  The first Moenarch desktop should be approachable to an ordinary computer user without requiring Linux expertise or memorized keyboard shortcuts. Make familiar overlapping windows, discoverable application access, mouse interaction, conventional panels and menus, and understandable settings the **primary default experience**. Useful keyboard shortcuts and advanced window-management options may remain available, but automatic tiling must not be required or the default primary workflow. The owner explicitly selected this as the initial direction, without ruling out other desktop workflows later.

- **3.3** [question] **Which established desktop experience should provide that familiar foundation?**  
  Answered 2026-10-14 by Decision 3.4 (option A); retained as the historical Question.  
  Should Moenarch build its initial user-facing experience around **KDE Plasma** (extensive customization and integrated system settings), **Cinnamon** (conservative conventional desktop workflow), or **GNOME** (streamlined, less traditional layout)? The important criterion is the real installed experience, including approachable defaults and subtle calendar-driven accents. This choice should not be confused with approval to build a bespoke desktop environment.

- **3.4 KDE Plasma as the initial desktop foundation.**  
  Status: owner-approved 2026-10-14. Answers 3.3 (option A).  
  The initial graphical Moenarch desktop should use **KDE Plasma**, with a conventional mouse-first layout and discoverable application launcher, panels, overlapping windows and settings in accordance with Decision 3.2. Adapt and compose the established desktop instead of creating a new desktop environment. The user-selected Plasma foundation should support the subtle calendar-driven color accents and Sunday-first calendar defaults already approved; no particular KDE application bundle, display protocol or custom extension architecture is decided here.

- **3.5** [question] **What visual character should the default Plasma desktop have?**  
  Answered 2026-10-14 by Decision 3.6 (option B); retained as the historical Question.  
  Should Moenarch use a **clean contemporary desktop** whose Catholic identity appears primarily in its liturgical accent colors and conventions (A), or a **warm, classical Catholic visual style** with restrained traditional art, typography or motifs alongside those accents (B)? Both retain the approved accessible mouse-first layout and functional clarity; the choice concerns the desktop's visible character, not additional devotional apps.

- **3.6 Classical Catholic visual identity for Plasma.**  
  Status: owner-approved 2026-10-14. Answers 3.5 (option B).  
  The default KDE Plasma desktop should have a **warm, classical Catholic visual character** rather than a purely contemporary/minimal appearance, with restrained inspiration from sacred art, traditional architecture, and appropriate typography or motifs. The result must remain polished, welcoming and legible for ordinary users, with a familiar mouse-first layout (3.2/3.4) and subtle liturgical accent colors (2.5/2.7). Do not turn the interface into ornate decoration that impedes tasks or require devotional applications for the identity to be visible. This decision selects the overall style, not particular artworks, fonts, licensed assets, wallpaper-selection behavior, or extra UI components.

## 4. Installation and first use

- **4.1** [question] **What should someone encounter first when booting Moenarch installation media?**  
  Answered 2026-10-14 by Decision 4.2 (option A); retained as the historical Question.  
  Should the installation medium boot into a **usable live KDE Plasma desktop with an Install action** (try first, then install), or **launch a guided installer before the full desktop** (installation-first)? Both must eventually support a straightforward graphical installation; this is about the real first-use flow, boot resources, and whether the system can be tried before committing to installation.

- **4.2 Try the live Plasma desktop before installing.**  
  Status: owner-approved 2026-10-14. Answers 4.1 (option A).  
  Booting Moenarch installation media normally takes people into a **usable, approachable KDE Plasma live desktop** where they can explore Moenarch, try ordinary desktop actions and inspect hardware compatibility before making changes to their disk. A visible, discoverable **Install Moenarch** action starts a **guided graphical installer** when the person chooses to proceed; installation is not forced on boot. Exploring the live session must not write to or repartition disks as an incidental consequence of opening the desktop. Explicit installation choices and destructive operations must remain gated by informed user action. Keep the live and installed desktop experiences coherent with Decisions 2.2, 2.3, 2.5, 2.7, 3.2, 3.4 and 3.6. The existing headless/test-only installation harness is not the user-facing installer.

- **4.3** [question] **Should the initial guided installer work without an internet connection?**  
  Answered 2026-10-14 by Decision 4.4 (option A); retained as the historical Question.  
  Should the installation media contain the operating system needed for a full **offline installation** (larger download, usable without network access), or should installation **download system packages** after the live desktop starts (smaller image, connection required to finish)? Both still boot into the live desktop under Decision 4.2. The choice affects the USB image, installation user journey, and independent acceptance evidence.

- **4.4 Full offline installation from the USB.**  
  Status: owner-approved 2026-10-14. Answers 4.3 (option A).  
  The Moenarch installation media must include everything required to **complete a normal installation of the standard KDE Plasma desktop without an internet connection**. Someone can boot into the approved live desktop (4.2), explicitly launch **Install Moenarch**, complete guided installation, remove the installation media and boot into the installed desktop without downloading packages or connecting to a network. A larger ISO is acceptable for this independence. Networking and updates can be used when available but must not be prerequisites for installation. This does not settle package snapshot strategy, additional optional online applications, installation storage/encryption defaults or whether the installer supports other desktop profiles.

- **4.5** [question] **Should installation enable full-disk encryption by default?**  
  Answered 2026-10-14 by Decision 4.6 (option B); retained as the historical Question.  
  For a fresh installation, should the installer preselect **encrypted system storage**, requiring an unlock secret at startup (A), or **unencrypted system storage**, minimizing setup and startup prompts (B)? Whichever default is chosen, the other option can remain explicitly selectable; this Question is about the experience a typical new user gets without changing advanced settings.

- **4.6 Unencrypted storage is the fresh-install default.**  
  Status: owner-approved 2026-10-14. Answers 4.5 (option B).  
  The guided Moenarch installer preselects **unencrypted system storage** for a fresh installation to avoid requiring an extra disk-unlock secret at each startup. The installer must still allow the user to **explicitly select encrypted storage** instead; neither choice may be silently switched. Explain the privacy and lost/stolen-device implications of leaving storage unencrypted before the user confirms installation. Both installation choices must respect the approved fully offline installation experience (4.4), explicit informed consent for disk writes (4.2), and the same standard KDE Plasma outcome. This does not decide whether the installed OS requires a user-login password at boot.

- **4.7** [question] **Should the installed desktop require a user login at startup?**  
  Answered 2026-10-14 by Decision 4.8 (option A); retained as the historical Question.  
  After booting the installed system, should **A** the user enter their account password before accessing the desktop, or should **B** the system automatically log into the local desktop account? Unlike disk encryption (4.6), account login controls entry to a running OS rather than protecting a powered-off drive from offline access. Either option could be changed in settings later; this asks about the initial default.

- **4.8 Require account-password login by default.**  
  Status: owner-approved 2026-10-14. Answers 4.7 (option A).  
  After installing Moenarch and booting from the disk, the normal default is a **graphical account login screen requiring the local user's password** before opening the KDE Plasma desktop, not automatic login. The guided installer must let the user set credentials for the account that will log in; installing and signing in must work **offline**. This is separate from disk encryption: under Decision 4.6 the system disk remains unencrypted by default, so account login does not protect the powered-off disk against offline data access. This choice does not determine session locking on suspend, multi-user account management, or whether users can subsequently opt into automatic login.

- **4.9** [question] **Should the first public installer support installing alongside another operating system?**  
  Answered 2026-10-15 by Decision 4.10 (option B); retained as the historical Question.  
  Should Moenarch offer a **guided dual-boot installation alongside an existing Windows or Linux system**, preserving that OS and its user data while safely managing partitions and boot selection (A), or initially require an **explicitly chosen dedicated installation disk/target**, with guided resizing and install-alongside support deferred (B)? Both must clearly identify the target and require informed confirmation before destructive disk writes (4.2); this choice materially changes the first-release installation journey, data-loss risks and validation scope.

- **4.10 Dedicated installation disk for the first public release.**  
  Status: owner-approved 2026-10-15. Answers 4.9 (option B).  
  The first guided Moenarch installer requires the person to **explicitly select a dedicated target disk** for a fresh installation. **Guided resizing of existing partitions and automatic install-alongside/dual-boot configuration on a shared disk are deferred**; an existing Windows/Linux installation on the selected disk must not be treated as something the installer can preserve. Show identifiable disk details and the consequences of erasing the selected disk, then require informed, unmistakable confirmation before making **any destructive disk changes** (4.2). **Never silently choose a disk or change non-target disks**; reject missing, ambiguous or unsuitable target selections without writing. Existing operating systems on **other disks** must remain untouched; this does not prohibit their independent manual use. Both offline installer paths (4.4, 4.6), graphical account login (4.8), and the recoverable, personal-file-preserving disk layout (5.4, 5.6) still apply. The first release's QEMU acceptance must show that a separately attached populated non-target disk is unchanged.

- **4.11** [question] **Should initial UEFI installations boot with Secure Boot enabled?**  
  Answered 2026-10-15 by Decision 4.12 (option B); retained as the historical Question.  
  Should the initial Moenarch installer and installed desktop **A** work on UEFI systems with **Secure Boot enabled** using a correctly signed, maintainable boot chain, or **B** support ordinary UEFI boot but clearly require that Secure Boot be **disabled by the user** on machines where it prevents Moenarch booting, deferring signed-boot support? The alternatives materially change everyday installation friction, signing and boot-update maintenance. Neither choice approves silently changing firmware settings or claims real-PC compatibility based solely on QEMU testing.

- **4.12 Secure Boot support is deferred for initial UEFI installs.**  
  Status: owner-approved 2026-10-15. Answers 4.11 (option B).  
  The first Moenarch installation ISO and installed KDE Plasma system should boot with **ordinary UEFI firmware when Secure Boot enforcement is disabled**. A signed, Secure-Boot-compatible boot chain is **not required for the initial release**. On computers where enabled Secure Boot blocks booting the ISO or installed system, users must **explicitly disable Secure Boot in their own firmware settings**; Moenarch must provide honest, understandable pre-boot/download and installation guidance, rather than implying the OS can alter firmware settings automatically or display a message before its bootloader has run. Document the security trade-off and never silently disable protections, enroll signing keys or claim Secure Boot compatibility. The QEMU acceptance for the first public ISO (7.6) must verify ordinary UEFI boot of both live and installed systems with Secure Boot disabled. This does not prohibit later signed-boot support or imply physical-PC compatibility without real hardware evidence.

- **4.13** [question] **Should the first installer support installed legacy-BIOS systems as well as UEFI?**  
  Answered 2026-10-15 by Decision 4.14 (option A); retained as the historical Question.  
  The current live ISO profile declares both `bios.syslinux` and `uefi.systemd-boot` modes, but that does not itself establish that the **installed desktop** boots in both modes. Should the first **installed** Moenarch release **A** qualify only an ordinary UEFI installation/boot path, leaving legacy BIOS install support for later, or **B** independently qualify both UEFI and legacy BIOS installation/boot paths in QEMU? Secure Boot is separately deferred (4.12). This affects installer bootloader behavior and the supported first-release verification matrix, not whether the live ISO itself includes both boot modes.

- **4.14 UEFI-only installed system for the initial public release.**  
  Status: owner-approved 2026-10-15. Answers 4.13 (option A).  
  The first public Moenarch installer must deliver an **installed KDE Plasma system that boots under UEFI firmware**, with **Secure Boot disabled where required** under Decision 4.12. **Legacy BIOS installed-system boot and legacy-BIOS installation are not part of the initial supported or accepted installer journey**, and may be added later. If the live installation medium starts on a BIOS-only machine, the graphical installer must **explain that the installed system requires UEFI and must not proceed to destructive installation** without a supported UEFI environment. The live image may continue exposing an existing BIOS boot mode, which is not a promise that installed legacy BIOS boot is supported. First-release QEMU qualification must verify that the **same installed virtual disk** boots into the normal KDE Plasma desktop in UEFI mode after the installer has been removed, including the approved encrypted and unencrypted choices (4.6), and must not misrepresent BIOS boot or hardware compatibility as tested.

- **4.15** [question] **Should the guided dedicated-disk installer expose custom partition layouts in its first release?**  
  Answered 2026-10-15 by Decision 4.16 (option A); retained as the historical Question.  
  Under the approved dedicated-disk install requirement (4.10) and system-only recovery with preserved personal files (5.4, 5.6), should the initial installer **A** generate and explain a supported recovery-compatible layout automatically, with no custom partition editor in the first release, or **B** also support user-defined layouts with validation that recovery and personal-file isolation still work? The choice affects data-safety guarantees, recoverability and the size of the installer acceptance matrix; both must preserve explicit disk-write confirmation and the ability to choose encryption.

- **4.16 Generate a supported recovery-compatible partition layout automatically.**  
  Status: owner-approved 2026-10-15. Answers 4.15 (option A).  
  The first public guided installer should **automatically create a supported whole-disk partition and storage layout** on the explicitly selected dedicated target (4.10), explaining its disk-erasure consequences and the system/personal-data boundaries before the user confirms. A **custom partition editor or user-defined partition layout is not required in the first release**. The generated layout must support **normal UEFI boot** (4.14), both default unencrypted and explicitly selected encrypted installations (4.6), **usable pre-update system recovery** without reverting newly created or modified personal files (5.4, 5.6), and access to recovery without a working KDE session. Do not allow an alternate custom layout that bypasses these guarantees. The implementation may choose appropriate established filesystem, volume and snapshot tools based on integration evidence; this choice does not mandate a specific filesystem, storage product, number of partitions or snapshot-retention policy. Installation must remain nondestructive until specific whole-disk confirmation and leave other disks untouched.

## 5. Keeping the desktop updated

- **5.1** [question] **How should Moenarch handle routine system updates by default?**  
  Answered 2026-10-14 by Decision 5.2 (option B with a changeable setting); retained as the historical Question.  
  Should it **automatically apply routine system and security updates in the background** with minimal user involvement (A), or **notify users and require explicit approval before applying updates** (B)? On an Arch-derived desktop the choice affects control over potentially disruptive changes, unattended package-management activity, and the reliability of an approachable everyday computer. In either case updates must remain understandable and recoverable; the question concerns default behavior, not whether users may ever change their preference.

- **5.2 User-approved updates with a configurable automatic mode.**  
  Status: owner-approved 2026-10-14. Answers 5.1 (option B with owner-requested adjustability).  
  By default, Moenarch should **notify users that routine system/security updates are available and wait for explicit approval before installing them**. Users must be able to **change this behavior through an understandable, persistent desktop setting**, including choosing **automatic installation** instead. Changing the setting must change actual update behavior rather than only the appearance of a toggle, and automatic installation must never be silently enabled on an existing installation. Present the update's effect and any required follow-up clearly. This decision does not settle auto-restart policy, update cadence, individual-package exclusions, or recovery mechanisms.

- **5.3** [question] **How should an ordinary user recover if a system update breaks the desktop?**  
  Answered 2026-10-14 by Decision 5.4 (option A); retained as the historical Question.  
  Should Moenarch provide a **built-in route to restore the previous working system** from a pre-update recovery point (A), or prioritize **guided recovery and repair from installation media** without maintaining automatic pre-update restore points (B)? Both must avoid destructive surprise and provide an understandable path back to a usable machine. This determines a meaningful disk/recovery contract, not merely a visual setting.

- **5.4 Restore the previous working system after a failed update.**  
  Status: owner-approved 2026-10-14. Answers 5.3 (option A).  
  Before applying a system update, Moenarch should establish a **usable recovery point representing the previous working system**. If the update breaks the installed system or prevents KDE Plasma from starting, the person must have an **understandable built-in way to restore that pre-update working state**, including access to recovery **without relying on the broken desktop**. This protects the user experience under both approved update modes: updates requiring explicit approval and user-enabled automatic installation (5.2). The recovery path must be independently demonstrated on the installed system, including a deliberately broken update and restoration of ordinary desktop use. The exact filesystem, snapshot implementation, retention schedule and treatment of personal files/settings are not chosen by this decision.

- **5.5** [question] **What data should restoring a pre-update system affect?**  
  Answered 2026-10-14 by Decision 5.6 (option A); retained as the historical Question.  
  Should a restore **revert the OS, applications and system configuration while preserving the user's personal documents and files** (A), or **return the whole machine, including personal files and user data, to its pre-update state** (B)? The first requires separating recoverable system state from user data; the second risks losing files created or edited since the recovery point. This Question concerns the default recovery consequence, not the storage technology.

- **5.6 System-only recovery that preserves personal files.**  
  Status: owner-approved 2026-10-14. Answers 5.5 (option A).  
  Restoring the pre-update recovery point (5.4) should **revert the operating system, installed applications and relevant system configuration** to their previous working state while **preserving users' personal documents, photos and other personal files**, including files created or edited after the recovery point. A recovery operation must not silently turn an update failure into loss of recent personal work. Arrange recovery boundaries so the system can return to a usable KDE Plasma desktop without rolling back personal files; show a comprehensible explanation of what changes and what stays before confirmation. The details of which application-specific settings are system state versus personal data require implementation-time analysis and evidence; this decision does not choose a filesystem, snapshot format or backup product.

- **5.7** [question] **Who should authorize restoring a system after a failed update?**  
  Answered 2026-10-14 by Decision 5.8 (option A); retained as the historical Question.  
  If the updated system cannot start normally, should Moenarch **offer an accessible recovery choice but wait for explicit user confirmation before reverting** (A), or **attempt to restore the last working system automatically when a failed-boot condition is detected** (B)? Both must honor personal-file preservation (5.6) and make recovery understandable. This is about default authorization of a potentially consequential restore, not which recovery implementation to use.

- **5.8 Require explicit confirmation before system recovery.**  
  Status: owner-approved 2026-10-14. Answers 5.7 (option A).  
  When an update leaves the installed system or KDE Plasma unusable, Moenarch must provide an understandable **built-in recovery option reachable without a functioning desktop**, but **must not automatically revert the installed system when a failed boot is detected**. The user chooses to initiate recovery and explicitly confirms the proposed restoration after being shown which previous working system state will be restored and that personal files are preserved (5.4, 5.6). Merely entering a recovery environment or encountering a boot failure must not itself perform a rollback. The choice does not specify bootloader, filesystem, recovery UI toolkit, or how failures are diagnosed.

## 6. Finding and installing applications

- **6.1** [question] **Which source should be preferred for ordinary desktop applications?**  
  Answered 2026-10-14 by Decision 6.2 (option A); retained as the historical Question.  
  For an approachable **graphical application-installation experience**, should Moenarch prefer **native Arch repository packages first** where an application is available in both formats (A), or **Flatpak applications first** where an application is available in both formats (B)? This decides the initial recommendation/source priority for typical desktop software, not the operating system's package manager, and does not automatically forbid the other source.

- **6.2 Prefer native Arch repository packages for desktop apps.**  
  Status: owner-approved 2026-10-14. Answers 6.1 (option A).  
  In the ordinary **graphical application discovery and installation** experience, Moenarch should **prefer native packages from the Arch repositories** when an application is available both there and as a Flatpak. The interface must clearly identify a package's source and install a native Arch package when the preferred/default result is chosen, maintaining the existing Arch package-management boundary. The user is not prohibited from choosing Flatpak where available; this decision does not require Flatpak integration to be shipped in the initial slice, replace pacman, include the AUR, or imply an initial set of bundled applications.

- **6.3** [question] **Should AUR applications appear in the initial graphical catalog?**  
  Answered 2026-10-14 by Decision 6.4 (option A); retained as the historical Question.  
  Should the first graphical software catalog **only expose trusted standard repository results by default**, keeping user-contributed Arch User Repository build recipes outside its normal browse/install workflow (A), or **also show AUR results with unmistakable third-party attribution and explicit extra confirmation before installation** (B)? The AUR is not the official Arch binary package repository and raises different source/build trust considerations. This question affects the initial accessible catalog, not whether experienced users may use AUR tooling separately.

- **6.4 Keep AUR outside the initial graphical catalog.**  
  Status: owner-approved 2026-10-14. Answers 6.3 (option A).  
  The initial graphical application catalog should **not list or install packages from the Arch User Repository (AUR)** as part of the normal application discovery/installation journey. Offer ordinary users supported applications from the configured **official Arch binary repositories** by default (6.2), with a clearly identified package source; Flatpak, where separately available, remains permitted under 6.2. This keeps community-maintained AUR build recipes, their execution and extra trust implications **outside the initial graphical flow**, rather than silently installing them or presenting them as official packages. Experienced users remain free to use separately chosen AUR tooling; the decision does not disable terminal package-management workflows, prohibit future reconsideration, or endorse any particular AUR helper.

- **6.5** [question] **How complete should the default preinstalled app collection be?**  
  Answered 2026-10-14 by Decision 6.6 (option A); retained as the historical Question.  
  Should the first installed Moenarch desktop provide **only essential everyday applications** and let people add the rest through the graphical catalog (A), or ship a **curated, broadly capable everyday software suite** covering areas such as office documents, media and communication out of the box (B)? Both must preserve the approved familiar KDE experience, offline installation and native-Arch-first software policy. This choice has consequences for ISO size, first-use usefulness and maintenance; it does not select individual app brands.

- **6.6 Essential preinstalled desktop applications.**  
  Status: owner-approved 2026-10-14. Answers 6.5 (option A).  
  Ship the initial installed Moenarch KDE Plasma desktop with a **focused set of genuinely useful essential applications**, rather than a large preinstalled office/media/communication suite. Provide ordinary first-use capabilities such as **web browsing, file management, basic text editing, basic media viewing and necessary system utilities** without requiring users to install them first. The approved fully offline installation (4.4) must result in those essentials being available for use on the installed system, and the live desktop (4.2) should offer a coherent way to try the core experience. Additional applications can be obtained through the accessible graphical application catalog (6.2, 6.4), where native official Arch packages are preferred and AUR content excluded from the initial GUI. Keep the initial bundle restrained to limit image size and maintenance without sacrificing everyday usability. This does not select specific application brands, media codec coverage, or prevent users from installing fuller office, media or communication suites later.

## 7. Release and update distribution

- **7.1** [question] **Which update supply model should the initial Moenarch desktop use?**  
  Answered 2026-10-14 by Decision 7.2 (option A); retained as the historical Question.  
  Should Moenarch receive native packages **directly from Arch's rolling repositories** as they become available (A), relying on the approved user-controlled update and pre-update recovery experience, or publish updates through **Moenarch-managed, tested package snapshots or staged repositories** (B) before offering them to users, adding release curation and infrastructure ownership in return for tighter update-set control? Both would retain the Arch package ecosystem and user-approved installation default (5.2); this is a choice about Moenarch's ongoing update supply responsibility, not the UI's update switch.

- **7.2 Direct Arch rolling repositories for native updates.**  
  Status: owner-approved 2026-10-14. Answers 7.1 (option A).  
  The initial Moenarch system obtains ongoing **native Arch package updates directly from the official Arch rolling repositories**, rather than relying on Moenarch-managed staged mirrors or tested package snapshots as an intermediate release gate. Keep Arch responsible for its repository packages, signing and package ecosystem while Moenarch owns its composition, defaults and any Moenarch-specific packages. This determines the **source of available updates**, not when they are installed: Decision 5.2 still requires user approval by default and permits an explicitly configured automatic mode, with pre-update recovery and user-confirmed restoration under Decisions 5.4, 5.6 and 5.8. Apply coherent system upgrades rather than selective partial upgrades; do not mistake direct upstream availability for permission to skip the user's update preference, safety checks or recovery point. This does not rule out testing Moenarch ISO releases or defining a separate policy for Moenarch-owned packages.

- **7.3** [question] **What should be the normal public installation-image release channel?**  
  Answered 2026-10-14 by Decision 7.4 (option A); retained as the historical Question.  
  Should the main user-facing download be a **versioned, deliberately released installation image** that is separately accepted and published after integrated installation/desktop verification (A), or a **continuously refreshed image from the latest passing default-branch build** (B)? Installed systems still consume direct Arch rolling updates under Decision 7.2 in either case. This question chooses the ordinary download/release contract, not a hard-coded calendar cadence or whether development builds may be available separately.

- **7.4 Deliberately released, versioned public installation images.**  
  Status: owner-approved 2026-10-14. Answers 7.3 (option A).  
  The normal public Moenarch download should be a **named/versioned, deliberately published installation ISO** with an identifiable release revision and artifact identity, **separately accepted only after the actual candidate image passes integrated boot, graphical live-desktop, fully offline installation and installed-KDE verification**. A passing default-branch ISO build is evidence, **not automatic authorization to replace the public download**. Published artifacts should remain identifiable so users can retrieve/check the intended tested image instead of silently receiving a different rolling build. Development and CI builds may still be available separately and must not be misrepresented as accepted releases. This release-image policy is distinct from Decision 7.2: once installed, native packages continue to receive updates from official Arch rolling repositories. Exact version naming, release cadence, publication service and physical-device qualification policy are not selected here.

- **7.5** [question] **What hardware evidence should qualify the first public ISO release?**  
  Answered 2026-10-14 by Decision 7.6 (option A); retained as the historical Question.  
  Is a **complete QEMU/virtual-machine acceptance run** of live desktop, offline installer, installed desktop and recovery sufficient to promote the initial public ISO (A), or must the release **also pass a real physical computer smoke test** covering boot, input, networking and graphical use before becoming the normal download (B)? Hardware validation is independent of the installed system's subsequent rolling updates. This question does not decide exact hardware models, supported CPU architectures or a mandatory testing schedule.

- **7.6 QEMU acceptance is sufficient for the initial public ISO.**  
  Status: owner-approved 2026-10-14. Answers 7.5 (option A).  
  The initial publicly versioned Moenarch installation ISO may be **qualified and deliberately released after complete, independently evidenced QEMU acceptance** of the **actual candidate image**: usable live KDE Plasma, guided fully offline installation, installed KDE and essential applications, and the approved built-in recovery from a deliberately broken update (4.2, 4.4, 3.4, 5.4–5.8, 6.6, 7.4). A **real physical-computer smoke test is not a required first-release gate**; physical testing is welcome as additional evidence. Publish the verification scope and any limitations accurately: passing on virtual hardware **must not be represented as proof of compatibility with real PCs**. Continue to require separate explicit release promotion of the exact accepted ISO, not automatic publication on a green build (7.4). This decision does not relax the quality of the QEMU journeys, decide which physical devices will eventually be supported, or permit claims that untested hardware was validated.

## 8. Personal data backups

- **8.1** [question] **Should Moenarch include a user-facing personal-file backup journey in its first release?**  
  Answered 2026-10-15 by Decision 8.2 (option B); retained as the historical Question.  
  Pre-update system recovery (5.4, 5.6) deliberately preserves current personal files, but **does not protect them against drive failure, theft or accidental deletion**. Should the first released desktop **A** include an approachable built-in way to configure and verify **backups of personal files to separate storage**, or **B** document the need for independent backups and defer an integrated backup journey to a later milestone? This is a separate protection contract from restoring system packages. Neither answer authorizes uploading files to a cloud provider without explicit user choice.

- **8.2 Defer integrated personal-file backups for the first release.**  
  Status: owner-approved 2026-10-15. Answers 8.1 (option B).  
  The first Moenarch Linux release **does not require an integrated graphical personal-file backup configuration or restore journey**. Clearly explain, in accessible product/help and release documentation, that the built-in **pre-update system recovery** (5.4–5.8) restores the operating system while **preserving current personal files**, but is **not a personal-data backup** and cannot be relied upon for lost, accidentally deleted or corrupted personal files, disk failure, or theft. Advise people to maintain **independent copies of important files on separate storage** before destructive installation or system changes; do not imply that a snapshot, isolated home partition or recovery point supplies those copies. Ordinary user-selected backup tools remain permitted through the standard application-installation experience (6.2, 6.4). This is a first-release scope choice, not an assertion that backups are unnecessary, and does not authorize uploading personal data to a cloud provider.

- **8.3** [question] **Should the first installer support preserving personal files when reinstalling Moenarch?**  
  Answered 2026-10-15 by Decision 8.4 (option B); retained as the historical Question.  
  On an already installed Moenarch disk that still contains personal documents but whose operating system needs replacement, should the first graphical installer **A** offer a guided repair/reinstallation route that restores the OS while **retaining existing personal files** on that same disk, or **B** remain a clearly destructive dedicated-disk installer, requiring users to preserve or copy personal files separately before reinstalling? The built-in system recovery in 5.4–5.8 is still available when its recovery point works; this asks about **reinstalling from installation media when that recovery is not usable**, not ordinary package rollback. Both options must identify risks honestly and never silently erase unrelated disks.

- **8.4 Clean reinstall only in the first installer.**  
  Status: owner-approved 2026-10-15. Answers 8.3 (option B).  
  When reinstalling Moenarch from the first public installation medium, use the same **deliberately destructive, user-confirmed dedicated-disk installation** as for a fresh install (4.10, 4.16). Do **not** offer or promise an in-place repair, preservation of an existing home directory, or migration of personal files on the selected disk. If the selected disk contains a previous Moenarch installation or personal files, **clearly identify the existing data, explain that reinstalling will erase it, and require unambiguous confirmation before any writes**. The user must first arrange independent copies of any important files to separate storage (8.2); cancelling or declining must leave all disks unchanged, and non-target disks must never be modified. This does **not** weaken built-in **system-only update recovery** (5.4–5.8), which remains a separate nondestructive alternative when its recovery point is usable. Do not imply that reinstalling is a recovery action that preserves the existing personal files.
