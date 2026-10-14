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
  Unanswered.  
  After booting the installed system, should **A** the user enter their account password before accessing the desktop, or should **B** the system automatically log into the local desktop account? Unlike disk encryption (4.6), account login controls entry to a running OS rather than protecting a powered-off drive from offline access. Either option could be changed in settings later; this asks about the initial default.

