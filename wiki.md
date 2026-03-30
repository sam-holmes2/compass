# character-sheet - Tab Guide

A detailed breakdown of each tab. For quick reference see the table in [README.md](README.md).

> *"Everybody wants to change the world. No one ever wants to change themselves"*
> - Nothing More


---

## Combat

The operational hub. Less about fighting, more about showing up.

**Practices** - up to 3 practice trackers, set by Claude based on your goals and what you've talked about. Each practice has a type:

- **Timer** - counts up in real time. The ring changes colour: red when not started, green while running, yellow if paused, dark green once you've hit your target. XP is awarded per minute while the timer runs.
- **Checkbox** - tap to mark each unit done (e.g. one run, one meditation). Each tap awards XP. Resets at the start of the next period.
- **Number** - type in a count and save (e.g. gym sessions this week). XP is awarded on save based on the increase. Resets at the start of the next period.

Each practice shows its personal best, a 7-period rolling average, and a mini bar chart of recent history. Reset periods (daily, weekly, etc) are set with Claude.

**Status** - four sliders (Focus, Energy, Purpose, Interest) that you set yourself at the start or end of a session. Not synced to Claude, just a quick self-check.

**Daily distribution** - Claude's estimate of how you actually spend a typical day, broken into categories. Updated as Claude learns more about your routine.

**Claude's read** - one paragraph from Claude on what's actually going on for you right now. Not a summary of what you said, but an honest read of the underlying pattern or tension. Updated each session.

**XP log** - a history of XP gains and level-ups, so you can see what earned what and when.

---

## Balance

The four elements, each representing a domain of your inner life. Think of them as lenses, not scores to optimise.

| Element | Domain | Low | High |
|---------|--------|-----|------|
| **Air** | Awareness / mindset | Reactive, unexamined | Noticing patterns in real time |
| **Fire** | Drive / direction | Drifting, obligated | Acting from genuine will |
| **Earth** | Beliefs / groundedness | Running on false stories | Honest and grounded |
| **Water** | Aliveness / desire | Numb, compulsive | Following real passions |

Each element has:
- A score (0-100) and mastery milestone (White / Blue / Purple / Brown / Black)
- A one-line status label from Claude
- An expandable section with relevant data (enemies for Air, skills for Fire, beliefs and values for Earth, sources and needs for Water)

**Progression** (Air section) - Claude's read on how this chapter is going overall. Same text as the Combat tab.

XP is awarded when you cross a mastery threshold. Higher difficulty elements reward more XP.

---

## Quests

Your goals, structured.

**Main quest** - the single overarching thing you're working toward. Has a description, a "done when" definition, and top next steps each with their own completion criteria. Claude updates progress and next steps each session.

**Side quests** - active sub-goals with progress bars, a current next step, why it matters, last evidence date, and XP reward on completion. Sorted by priority (Claude-assigned).

**Completed** - finished quests with completion date, XP earned, and a sentence on how it resolved.

---

## Skills

Skills split into two columns:

- **Underlevelled** - mastery 1-2, highest priority first. The gaps most worth closing right now.
- **Signature strengths** - mastery 3-5, highest priority first. What you're genuinely good at.

Mastery scale: 1 = just starting, 2 = developing, 3 = competent, 4 = strong, 5 = unconscious competence.

Priority is Claude-assigned based on how valuable mastering this skill would be right now. It's not about how much you enjoy it.

The **skills chart** in Combat plots all skills on a 2D grid: priority on the Y axis, mastery on the X. Top-left quadrant (high priority, low mastery) is where the real leverage is.

---

## Enemies

Three types of pattern, all in one place:

| Tag | Type | Source |
|-----|------|--------|
| ☠ Enemy | Active psychological patterns being watched | `bestiary.currentEnemies` |
| ⬡ Belief | Core false beliefs driving behaviour | `limitingBeliefs` |
| ↓ Drain | Habitual behaviours that cost more than they give | `drains` |

**The Boss** sits at the top - the central pattern that all others tend to serve. Usually something like perfectionism, approval-seeking, or avoidance at its root.

**The Graveyard** - patterns that have been named, understood, and no longer have power. Recorded with how they were defeated.

Enemies are named in ALL CAPS. Each has a description of when it arises and what it feels like, not a clinical definition but something you'd actually recognise in the moment.

---

## Inventory

Three lists of what supports or costs you:

**Allies** - people and places that provide genuine support, safety, or presence. Not everyone you like, specifically those where you don't have to perform.

**Sources** - activities and contexts that reliably produce genuine aliveness. The things that restore rather than drain.

**Drains** - habits and patterns that cost more than they give. These also appear in the Enemies tab with a ↓ tag.

---

## Achievements

Two types:

**Achievements** - milestones, breakthroughs, streaks, completed quests. Awarded by Claude when something real happens. Types: `milestone`, `breakthrough`, `streak`, `quest`. Featured achievements pin to the header.

**Classes** - character archetypes you've unlocked based on who you are and how you operate, e.g. Creator, Builder, Achiever. Claude assigns these based on patterns across sessions. Featured classes appear in the header subtitle.

Neither can be self-awarded. Claude awards them in session, sometimes without being asked.

---

## Journal

The chronological record of your sessions.

Organised into **chapters** (named narrative arcs, e.g. "The Career Turn", "Clearing the Ground") containing **entries** (individual sessions). Most recent first.

Each entry has:
- **Key Events** - factual log of what happened
- **Key Insights** - emotional or psychological learning from the session
- **Unresolved Tensions** - open questions or unresolved dynamics (not to-dos)
- **Tags** - linked quests, skills, enemies, values, and needs. Clickable to navigate to the relevant item.

The Journal tab is where the value of long-term use really compounds. After a few months, patterns become visible across chapters that aren't obvious session to session.

---

## A note on data resets

Practice data (timer, checkbox, number entry) resets when the period rolls over (daily at midnight, weekly at the start of the week, etc). When the app detects a new period has started, it automatically archives the previous period's value into localStorage history before resetting the counter - so nothing is lost, it just moves from "today" to the graph.

This archiving happens when you open the app after a period boundary has passed. If you leave the app open continuously across midnight, the rollover is detected the next time you interact with a practice widget.

