# character-sheet — Tab Guide

> *"Everybody wants to change the world. No one ever wants to change themselves"* — Nothing More

---

## Combat

The operational hub.

**Practices** — up to 5 trackers set by Claude based on your goals. Three types:
- **Timer** — counts up in real time. Ring turns green when running, yellow when paused, dark green once you hit your target. XP awarded per minute.
- **Checkbox** — tap each unit done (e.g. one run, one meditation). XP per tap.
- **Number** — type a count and save (e.g. gym sessions this week). XP on save.

Each practice shows personal best, 7-period rolling average, and a bar chart of recent history.

**Status** — four sliders (Focus, Energy, Purpose, Interest) you set yourself. Not synced to Claude, just a quick self-check.

**Daily distribution** — Claude's estimate of how you spend a typical day. Updated as Claude learns your routine.

**Claude's read** — Claude's honest take on what's actually going on underneath. Not a summary of what you said.

**XP log** — history of XP gains and level-ups.

---

## Balance

The four elements — lenses for your inner life, not scores to optimise.

| Element | Domain | Low | High |
|---------|--------|-----|------|
| **Air** | Awareness / mindset | Reactive, unexamined | Noticing patterns in real time |
| **Fire** | Drive / direction | Drifting, obligated | Acting from genuine will |
| **Earth** | Beliefs / groundedness | Running on false stories | Honest and grounded |
| **Water** | Aliveness / desire | Numb, compulsive | Following real passions |

Each element has a score (0-100), mastery belt (White → Black), a one-line status from Claude, and an expandable section with relevant data.

XP is awarded when you cross a mastery threshold.

---

## Quests

**Main quest** — your single overarching goal. Has a description, a "done when" definition, and next steps with completion criteria.

**Side quests** — active sub-goals with progress bars, a current next step, and XP reward on completion. Sorted by priority.

**Completed** — finished quests with date, XP earned, and how it resolved.

---

## Skills

Split into two columns:
- **Underlevelled** — mastery 1-2, highest priority first. Gaps most worth closing.
- **Signature strengths** — mastery 3-5, highest priority first.

Mastery: 1 = just starting · 2 = developing · 3 = competent · 4 = strong · 5 = unconscious competence

The **skills chart** plots all skills on a 2D grid (priority vs mastery). Top-left = high priority, low mastery — where the leverage is.

---

## Enemies

All patterns sorted by Claude-assigned priority:

| Tag | Type | What it captures |
|-----|------|-----------------|
| ◈ Distortion | Air | How situations or evidence are being filtered in real time |
| ⚡ Compulsion | Fire | Action-level patterns driven by urgency or avoidance |
| ⬡ Belief | Earth | False or unhelpful stories driving behaviour |
| ↓ Drain | Water | Habitual behaviours that cost more than they give |

Both `bestiary.currentEnemies` and `limitingBeliefs` feed this list and share a unified priority ranking.

**The Boss** (★) always appears first — same fields as any enemy, plus `whyBoss` and up to 3 vulnerabilities.

**The Graveyard** — defeated patterns, recorded with how they were overcome.

Each enemy shows its HP bar (red = still strong, amber = weakening, green = losing grip), short-term benefit, and inferred origin.

---

## Inventory

- **Allies** — people and places that provide genuine support or safety. Not everyone you like — specifically those where you don't have to perform.
- **Sources** — activities and contexts that reliably produce aliveness.
- **Drains** — habits and patterns that cost more than they give. Also appear in Enemies with a ↓ tag.

---

## Achievements

- **Achievements** — milestones, breakthroughs, streaks, completed quests. Types: `milestone`, `breakthrough`, `streak`, `quest`. Featured pins to header.
- **Classes** — character archetypes you've unlocked. Featured classes appear in the header subtitle.

Neither can be self-awarded. Claude awards them in session.

---

## Journal

**Your Arc** — shown at the top. Claude's whole-journey summary: how you've changed, what threads run across all sessions. Updated every few sessions.

Organised into **chapters** (named narrative arcs) containing **entries** (individual sessions), most recent first. Each entry has Key Events, Key Insights, and Unresolved Tensions.

The Journal is where long-term use compounds. After a few months, patterns emerge across chapters that aren't visible session to session.

---

## What lives where

**In the JSON** (safe as long as you export): everything Claude writes — quests, enemies, beliefs, skills, elements, journal, XP, achievements. Export after every session.

**In localStorage only** (lost if you clear browser storage): practice tracker values and history, XP log, status sliders, pinned achievements/classes. Losing these won't affect your core data.

## Practice period resets

Practice data resets when the period rolls over (daily at midnight, weekly at week start, etc). The app archives the previous period's value into history before resetting — nothing is lost as long as you open the app at least once per period.

## Chapter archiving

When a chapter's arc feels complete, Claude will flag it and ask you to save your current JSON export as a permanent archive. Claude then removes the closed chapter from the working JSON. Keep old exports somewhere safe.
