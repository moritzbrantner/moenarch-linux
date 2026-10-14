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
  The default desktop should reflect Catholic context in small, everyday details: **liturgical colors** in its visual language; **Sunday as the first day of the week** in calendars; and **AD/BC instead of CE/BCE** where dates are shown with historical era labels. These are experience requirements for the Moenarch-controlled desktop and its defaults, not claims that every unmodified third-party Linux program can be made to obey them. The precise use and behavior of liturgical colors remains unresolved in 2.4.

- **2.4** [question] **How should liturgical colors affect the everyday desktop?**  
  Unanswered.  
  Should **A** the desktop's subtle accents reflect the liturgical day or season automatically, or **B** the system provide a stable Catholic-inspired color palette that users select independently of the calendar? Both should preserve legibility and restraint; this decision does not authorize unrelated devotional apps or additional background services.

