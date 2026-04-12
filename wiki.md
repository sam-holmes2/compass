# character-sheet — Tab Guide

> *"Everybody wants to change the world. No one ever wants to change themselves"* — Nothing More

---

## Combat

The daily check-in hub.

**Status check-in** — four sliders (Focus, Energy, Interest, Purpose) you set yourself. Shown as a radar chart with 7-day and all-time averages. Not synced to the AI, just a quick self-read.

**Recurring practices** — up to 5 practice trackers set by the AI based on your goals. Three types:
- **Timer** — counts up in real time. Ring turns green when running, yellow when paused, dark green once you hit your target. XP awarded per minute.
- **Checkbox** — tap each unit done (e.g. one run, one meditation). XP per tap.
- **Number** — type a count and save (e.g. gym sessions this week). XP on save.

Each practice shows personal best, rolling average, and a bar chart of recent history. You can set a custom colour for each practice bar.

---

## Balance

The four elements — lenses for your inner life, not scores to optimise.

| Element | Domain | Low | High |
|---------|--------|-----|------|
| **Air** | Awareness / mindset | Reactive, unexamined | Noticing patterns in real time |
| **Fire** | Drive / direction | Drifting, obligated | Acting from genuine will |
| **Earth** | Beliefs / groundedness | Running on false stories | Honest and grounded |
| **Water** | Aliveness / desire | Numb, compulsive | Following real passions |

Each element has a score (0–100), mastery belt (White → Black), a one-line status from the AI, and an expandable section with relevant enemies and allies for that element. The Air section also shows the AI's current read on what's going on beneath the surface, plus the whole-journey progression summary.

A radar chart and harmony history chart track all four elements over time.

XP is awarded when you cross a mastery threshold.

---

## Quests

**Main quest** — your single overarching goal. Has a description, a "done when" definition, and next steps with completion criteria.

**Side quests** — active sub-goals with progress bars, a current next step, and XP reward on completion. Sorted by priority.

**Completed** — finished quests with date, XP earned, and how it resolved.

---

## Skills

**Core skills** — four foundational sliders (Rest, Movement, Nutrition, Connection) shown as a radar chart with 7-day and all-time averages. Not synced to the AI.

**Keystone skill** — your highest-priority underlevelled skill. Low mastery + high priority = maximum growth potential.

**By Role** — a pie chart breaking down your skills by role: DPS (push harder), Tank (pull back), Support (give to others or future self). Each segment is shaded dim→bright based on average mastery — bright means that role is well developed.

**All skills** — full ranked list, draggable to reorder. Each skill shows mastery (1–5), role, and priority.

Mastery: 1 = just starting · 2 = developing · 3 = competent · 4 = strong · 5 = unconscious competence

**XP History** — log of all XP gains, losses, and level-ups, grouped by date into collapsible sessions. Each session shows total XP earned that day. Kill entries (enemy defeated) are highlighted in red.

---

## Enemies

Bosses are root patterns; minions are symptoms. All patterns sorted by AI-assigned priority:

| Tag | Type | What it captures |
|-----|------|-----------------|
| ◈ Blindspot | Air | How situations or evidence are being filtered before conscious choice |
| ⚡ Compulsion | Fire | Action-level patterns driven by urgency or avoidance |
| ⬡ Limiting Belief | Earth | False or unhelpful stories driving behaviour |
| ↓ Temptation | Water | Desire-level pulls that cost more than they give |

**The Boss** (★) always appears first — same fields as any enemy, plus `whyBoss` and up to 3 vulnerabilities (specific, actionable moments the pattern can be interrupted). Bosses own sub-enemies that are faster-moving manifestations of the same root.

**Current enemies** — cross-cutting patterns not tied to a specific boss.

**The Graveyard** — defeated patterns, recorded with how they were overcome.

Each enemy shows its HP bar (red = still strong, amber = weakening, green = losing grip), short-term benefit, and inferred origin. Defeating an enemy (moving it to the graveyard) immediately awards its `xpReward` XP.

A pie chart shows enemy breakdown by type.

---

## Allies

Everything working for you. Each ally has a type matching its elemental root:

| Type | Element | What it is |
|------|---------|------------|
| ☁ Loot | Air | Moment of clarity, gratitude, or genuine appreciation |
| ⚡ Spell | Fire | Action or leverage point that reliably overcomes friction |
| ⬡ Liberating Belief | Earth | True belief that frees from unnecessary suffering |
| ↑ Source | Water | Flow state activity or environment that reliably produces aliveness |

Some allies have a **corruption** field — the internal friction that stops you fully receiving what the ally offers.

A pie chart shows ally breakdown by type.

---

## Achievements

**Classes** — character archetypes you're growing into. Up to 3 can be pinned to your header subtitle. Click a class card to toggle it.

**Titles** — specific moments that deserve recognition, each tied to a real date. Four elemental types:

| Type | Element | What it marks |
|------|---------|--------------|
| ✦ Insight | Air | A moment of clarity — something noticed or seen differently for the first time |
| ⚡ Deed | Fire | Something done — an action taken, obstacle overcome, or goal reached |
| ⬡ Transmutation | Earth | A belief, identity, or story about yourself that permanently changed |
| ↓ Surrender | Water | Something stopped fighting — a fear released, a grip loosened, an old need let go |

Neither classes nor titles can be self-awarded. The AI awards them based on what actually happened in the session.

Up to 3 titles can be pinned to your header. A pie chart shows title breakdown by type.

---

## Journal

**Progression Timeline** — the AI's whole-journey summary: how you've changed, what threads run across all sessions. Updated every few sessions. Also visible in the Balance tab (Air section).

**Last Session** — the AI's honest read on what was happening beneath the surface in your most recent session.

**Key Question** — the best prompt for your next session.

**Session starters** — copyable prompts to help you open a new AI conversation. Includes a deep-dive option that runs a structured interview across all fields.

**Chapters and entries** — organised into named narrative arcs (chapters) containing individual session logs (entries), most recent first. Each entry has Key Events, Key Insights, and Unresolved Tensions.

The Journal is where long-term use compounds. After a few months, patterns emerge across chapters that aren't visible session to session.

---

## What lives where

**In the JSON** (safe as long as you export): everything the AI writes — quests, enemies, beliefs, skills, elements, journal, XP, achievements. Export after every session.

**In localStorage only** (lost if you clear browser storage): practice tracker values and history, XP log, status sliders, core skills sliders, pinned achievements/classes. Losing these won't affect your core data.

## Export vs Migration

The export modal has two columns:

**AI Journal Export (left)** — the JSON you paste into your AI project as `data.json`. Contains all your character data. Keep this up to date after every session.

**Full Migration Backup (right)** — a larger bundle that includes everything in the AI export *plus* practice tracker history, status check-in history, featured pins, and XP log. Use this when moving to a new device or browser. Do not paste this into an AI chat — it is too large and contains data the AI doesn't need.

## Practice period resets

Practice data resets when the period rolls over (daily at midnight, weekly at week start, etc). The app archives the previous period's value into history before resetting — nothing is lost as long as you open the app at least once per period.

## Chapter archiving

When a chapter's arc feels complete, the AI will flag it and ask you to save your current JSON export as a permanent archive. The AI then removes the closed chapter from the working JSON. Keep old exports somewhere safe.
