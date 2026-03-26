# character-sheet

**Turn your journal into a living dashboard for your life.**

*The real value of a character sheet is the character you build without it.*

Reflect with Claude, then see everything you've shared - quests, skills, values, patterns, progress - in a single offline HTML file. The more you use it, the more useful it gets.

> Early work in progress. Things will change. Feedback welcome.

---

## What's in the box

| File | Purpose |
|------|---------|
| `character-sheet.html` | Your dashboard. Open in any browser, no install needed. |
| `schema.md` | Instructions for Claude. Attach to your Claude project permanently. |
| `steve-example-data.json` | Demo data. Import to explore the app before adding your own. |

---

## Quick note on privacy

character-sheet stores everything locally on your machine. Nothing is sent anywhere unless you paste it into Claude yourself. That said, a few things worth knowing before you start:

- **Claude sees what you share.** When you paste your data into a Claude session, Anthropic can see it per their data retention policy. Only share what you're comfortable with.
- **Don't use this on a shared computer.** Anyone with access to your browser could read your data from localStorage.
- **Browser matters.** See the [Security](#security) section below for a recommendation on which browser to use.

---

## Setup

**Step 1 - Download the files**

Click `character-sheet.html` above, then click the three-dot menu (or the download icon) in the top right. Do the same for `schema.md`. Save both somewhere easy to find.

**Step 2 - Explore the demo**

Open `character-sheet.html` in any browser (Chrome, Safari, Firefox). Steve's demo data is pre-loaded so you can see what a populated dashboard looks like before adding your own.

**Step 3 - Set up your Claude project**

1. Go to [claude.ai](https://claude.ai) and create a new **Project** (left sidebar).
2. In the project, click **Add content** and upload `schema.md`. This stays attached permanently.
3. Optionally upload `journalling-prompts.md` too - this gives Claude better instincts for what to ask you.

**Step 4 - Run your first session**

Paste the **Quickstart prompt** below into your Claude project and follow where it leads. Answer only what you're comfortable with - you can always go deeper later.

**Step 5 - Import your data**

At the end of the session, ask Claude:
> *"Generate my JSON and a starter context.md using schema.md."*

Claude will output a block of JSON. In `character-sheet.html`, click the `◈` button (bottom right), paste it in, hit Import. Save the `context.md` file somewhere private on your machine.

---

## Quickstart prompt

A ready-to-paste prompt for your first session. character-sheet will interview you to get enough to make the dashboard feel alive, without pushing you to share more than you want to.

```
I'm setting up character-sheet, a personal life dashboard. I've attached schema.md which explains the data format.

Interview me to fill in my character sheet. Keep it conversational, ask one thing at a time, and never push me to share anything I'm not comfortable with. Start with the most important things and work down. Cover as much of this as you can:

- What to call me, and one honest sentence about where I am in life right now
- My main quest - the single most important thing I'm working toward
- 2-4 side quests - active goals with a rough sense of progress
- The four elements - Air (self-awareness), Fire (motivation and direction), Water (what makes me feel alive), Earth (beliefs and groundedness). An initial score out of 100 and a one-line status for each.
- Skills I'm actively building, and any I'd consider signature strengths
- Top values and core needs - and which I feel most or least aligned with right now
- People or places that feel genuinely supportive (allies)
- Activities that reliably restore energy or produce aliveness (sources)
- Habits that cost more than they give (drains)
- Patterns or inner critics I keep running into (enemies)
- Any limiting beliefs or empowering beliefs worth tracking
- Recent wins or meaningful moments worth logging

When you have enough, generate the full JSON using schema.md and a starter context.md.
```

**Want a more guided experience?** `journalling-prompts.md` is an optional file with deeper prompts for each section. Upload it to your Claude project alongside `schema.md` and Claude will use it to ask better questions when you're ready to go deeper.

---

## Each session after that

1. **Journal** - brain dump freely in your Claude project. What happened, what's on your mind, what you're stuck on. Claude will do the rest.
2. **End the session** - ask Claude: *"Update my JSON and context.md based on this chat."*
3. **Update your context** - replace your saved `context.md` with the new version Claude provides.
4. **Sync your dashboard** - open `character-sheet.html`, click `◈`, paste the JSON, Import.

You can also edit text fields directly in the app. Use Export to send changes back to Claude.

---

## Tabs at a glance

| Tab | What it shows |
|-----|---------------|
| **Combat** | Practice timer, activity graph, daily time breakdown, Claude's read on where you're at. |
| **Balance** | The four elements - Air / Fire / Water / Earth - each scored and detailed. |
| **Quests** | Main quest, side quests with progress, completed quests. |
| **Skills** | Skills by mastery level. Underlevelled vs signature strengths. |
| **Enemies** | Active patterns, limiting beliefs, and drains all in one place. |
| **Inventory** | Allies, flow sources, and energy drains. |
| **Achievements** | Unlocked milestones and character classes. |
| **Lore** | Chronological journal - sessions logged with insights, tensions, and tags. |

See [wiki.md](wiki.md) for a detailed breakdown of each tab.

---

## Security

**Use Firefox if you can.** In Chrome and Edge, all local HTML files share the same storage origin - meaning any other HTML file you open in the same browser could technically read your character-sheet data. Firefox gives each local file its own isolated origin, so this risk doesn't apply.

If you prefer Chrome, you can run character-sheet from a local server instead (`python3 -m http.server` in the same folder, then open `localhost:8000/character-sheet.html`). This gives it a proper isolated origin.

**On cloud storage:** Keeping `character-sheet.html` in Dropbox, Google Drive, or iCloud is fine - the file itself contains no personal data, only demo data. Your personal data lives in your browser's localStorage and in `context.md` on your machine. Just be aware that if you sync `context.md` to the cloud, it's no longer fully local.

**On Claude:** anything you paste into a Claude session is processed by Anthropic. character-sheet is designed so you control exactly what gets shared - nothing leaves your machine automatically. The privacy tradeoff is real, but it's one you're making deliberately rather than one that happens in the background.

---

## Offline use

`character-sheet.html` works without Claude entirely. Populate it manually via `◈` to use it as a plain RPG-style life tracker - no accounts, no internet, no data shared with anyone.

---

## Why this exists

- AI made journalling and self-reflection genuinely useful for me, but every conversation started from scratch. The insights lived in chat logs I'd never reread.
- The line between journalling, therapy, and using AI as a mirror was already blurring. I wanted somewhere to see that reflection clearly, own it, and build on it over time.
- I have real concerns about trusting any company with deep personal data - and the uncomfortable reality is that this is already happening at scale, whether people are intentional about it or not. character-sheet is a bet that you should be able to see your own AI-assisted self-knowledge, shape it, and keep it on your own machine.
- I've been a D&D and RPG nerd my whole life. If social media companies can hijack progression mechanics to keep people scrolling, I'd rather use the same tools to help people understand themselves.
- Shame-based streaks made me feel worse, not better. character-sheet is built around honest self-understanding and genuine progress, not performance.
- The whole thing was vibe-coded with Claude. The journalling sessions that populate it use Claude. The JSON that runs it is generated by Claude. It felt right to build something that uses AI well, rather than just talking about it.

The younger generation is growing up with AI whether they want to or not. I'd rather they use it to understand themselves better and actually level up, than have it used on them.

