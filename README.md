⚠️ This whole repo, including README is a very early stages work in progress! ⚠️

# Compass? Character sheet? Name TBC

**Turn your brain dumps into a living RPG-style dashboard for your life.**

Journal freely with Claude, then visualise anything you've chosen to share (quests, skills, values, enemies, summarised chats with dates) all in a single local / offline HTML file. Modify data (except XP and level ups!) in browser then export and paste JSON back to Claude.  The more you use it, the more useful it becomes.

## Setup (first time)
1. Download the `character-sheet.html` and `schema.md` files listed at top of this page (TODO - detail this for non-technical users)
2. Open `character-sheet.html` in any browser — Steve's demo data is pre-loaded so you can explore first.
3. Open a [Claude project](https://claude.ai) and attach `schema.md` permanently
4. Paste the **Quickstart Quiz prompt** below into Claude and answer only as many of Claude's questions as you want to.
5. At the end, ask: *"Generate my full JSON using schema.md and a starter context.md."* (TODO - make this way more concise and easy for non-technical users) 
6. Import the JSON via the `◈` (TODO change to arrow) button (bottom-right). Save `context.md` somewhere private.

---


## Quickstart quiz prompt

Paste this into Claude to help it learn about you. It will ask you questions to populate your dashboard.

```
I'm setting up Compass, a personal life dashboard. I've attached schema.md which explains the data format.

Please interview me to fill in my character sheet. Ask one section at a time, most important first, and keep it conversational and never push me to require data I'm not comfortable sharing. Aim to cover:

- What I want Claude and character sheet to call me and where I am in life right now (one honest sentence)
- Main quest: the single most important thing I'm working toward
- 2-4 side quests: active goals I'd like to keep track of with some idea of current progress
- How I tend to motivate or discipline myself and when / why this works
- My mastery with the four elements: Air (awareness/ability to notice changes), Fire (actions/energy/will/drive/direction), Earth (groundedness/truth/utility of beliefs), Water (trusting natural desires). Aim to identify an initial score for each out of 100 and a one-line status for each element to describe my current "alignment"
- Skills that are important to me (actively developing or signature strengths) 
- Top values and core psychological needs (ideally ranked and an idea of which I am living in or out of alignment with) 
- Activities that reliably restore energy or produce aliveness (sources)
- Habits that cost more than they give (drains)
- People, places or anything that feel genuinely supportive (allies)
- Common inner or outer problems I'm working with (enemies)
- Limiting beliefs and empowering beliefs worth tracking
- Character defining or recent  wins, traits or meaningful moments (for achievements and lore)

When you have enough, generate the full JSON using schema.md and a starter context.md.
```

---

## Usage (each session)

1. **Journal** — brain dump freely. What's on your mind, what happened, what you're stuck on. If nothings coming try asking Claude `What would be interesting to learn about me?`
2. **End the session** — ask Claude to `Use schema.md to update my JSON and context file based on this chat.` [todo - is this minimal and easy for NT users?]
3. **Save your context** — replace your `context.md` with the updated version Claude provides.
4. **Update your sheet** — open `character-sheet.html`, click `◈`, paste the JSON, click Import.

> You can also edit fields directly in the app. Use Export to send those edits back to Claude in your next session.

- recommended to use this with Claude (not tested with other models)


## Files [ I think we can remove t]

| File | Purpose |
|------|---------|
| `character-sheet.html` | Your character sheet. Pre-loaded with Steve's demo data, feel free to explore before replacing with your own. |
| `schema.md` | Instructions for Claude. Keep this attached to your Claude project permanently and be sure to grab updated copies regular as changes are made! |
| `steve-example-data.json` | Steve's example data. Import it to explore the full app or use as a starting point. |

### Your context file

`context.md` is Claude's persistent memory between sessions. Claude generates and maintains it — you don't write it yourself.

Over time it captures: who you are, key relationships, recurring patterns, active quests, and anything that helps Claude know you and give more useful responses.

**Keep it private.** It never leaves your machine unless you send it to Claude.

Your `context.md` is created by Claude in your first session and kept privately on your machine — not in this (or any) repo.


## Alternative: Offline use

`character-sheet.html` works without Claude entirely. Populate it manually via `◈` to use it as a plain RPG-style life tracker — no accounts, no internet, no data shared with anyone.

---

# Wiki

## Tab guide

| Tab | What it shows |
|-----|---------------|
| **Balance** | Four elements — Air / Fire / Water / Earth — each a domain of your life with a score and expandable detail. |
| **Quests** | Main quest, side quests, and completed quests with progress bars. |
| **Skills** | Skills ranked by mastery and XP. Underlevelled skills vs signature strengths. |
| **Combat** | Deep Work timer, activity graph, daily time distribution, and Claude's current read. |
| **Enemies** | The Bestiary — boss pattern, active enemies, and defeated patterns in the graveyard. |
| **Inventory** | Allies, flow sources, and drains. |
| **Achievements** | Unlocked milestones and character classes. |
| **Lore** | Chronicle of sessions — insights, tensions, and events tagged by theme. |

---

# Lore! 

## Name ideas (TBC - all ideas welcome, you will be credited!) 
- Compass (apps current working title, though its expanded to more than just direction)
- Cheat Sheet / character sheet?
- HarmonAI
- JournAI 
- Savepoint 
- Mirrorself 


## Why this exists
- Found "bouncing ideas" off an impartial and external AI super useful for all kinds of personal situations but especially in the early days it was frustrating to have an AI forget basic things about you, and cumbersome to manually track and update your own context file. 
- Realised the line between journalling, therapy, and using AI as a mirror was already blurring.
- I've spent years working as a security consultant breaking things, thought I'd have a go at building something instead! 
- Probably due to above career I do have real concerns about trusting any company with deep introspections from therapy, journalling, etc but the unfortunate reality is that this is already happening (majority of prompts already for "personal use" rather than work). 
- All the major AI companies are racing toward memory and personalisation — your AI is going to know you whether you're intentional about it or not. Compass is a bet that you should be able to see that memory, shape it, and own it locally. Not a black box locked in some 3rd party company's database.
- Massive D&D and video game nerd for as long as I can remember (always loved RPGs, strategy games, MMOs, etc) if social media company's etc want to hijack these techniques for their own agendas, time to take the power back :) 
- Realised I can use gamification (particularly progression) to motivate myself a lot more sustainably. App has expanded to be more about honest self-understanding than any shame-based streaks that can worsen burnout etc in my experience 
- Weaponizing my massive personal interest in psychology, philosophy, etc to hopefully make something useful


