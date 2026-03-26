# character-sheet

**Turn your journal into a living dashboard for your life.**

*The real value of character-sheet is the character you build away from it.*

**[Check out Steve's character-sheet](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** - live demo opens in your browser, no download needed. 

> Early work in progress. ALL feedback is very welcome - open an issue or contact directly 

---

## Privacy (quick note)

Everything stays on your machine. Nothing is sent anywhere unless you paste it into Claude. A few things worth knowing:

- What you share with Claude is processed by Anthropic - [read their data retention policy](https://privacy.claude.com/en/articles/10023548-how-long-do-you-store-my-data). Since this is personal journalling, we recommend turning off **"Help improve Claude"** in your Claude settings (Profile > Privacy) to stop your conversations being used for model training.
- Don't use this on a shared computer.
- Firefox is the safest browser to use - see [Security](#security) for why.

---

## Setup

You'll need: a free [Claude account](https://claude.ai) and the two files below.

1. **Download `character-sheet.html` and `schema.md`** - click each file above, then the download icon (top right of the file view).
2. **Create a Claude Project** - go to [claude.ai](https://claude.ai), click New Project in the left sidebar.
3. **Upload `schema.md` to the project** - click Add content. It stays attached permanently so Claude always knows the format.
4. **Paste the Quickstart prompt below** into the project and answer Claude's questions. Share only what you're comfortable with.
5. **At the end, ask Claude:** to `"Generate my JSON and a starter context.md using schema.md."`*
6. **Import your data** - open `character-sheet.html`, click `◈` (bottom right), paste the JSON, hit Import. Save `context.md` somewhere private.

Optionally upload `journalling-prompts.md` to your project too - it gives Claude better prompts when you want to go deeper.

---

## Quickstart prompt

Paste this into your Claude project to get started. Claude will ask questions one at a time and never push you to share more than you want.

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

---

## Each session after that

1. **Journal** - brain dump freely in your Claude project. What happened, what's on your mind, what you're stuck on.
2. **End the session** - ask Claude: *"Update my JSON and context.md based on this chat."*
3. **Update your context** - replace your saved `context.md` with the new version Claude provides.
4. **Sync your dashboard** - open `character-sheet.html`, click `◈`, paste the JSON, Import.

You can also edit fields directly in the app and use Export to send changes back to Claude.

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

If you prefer Chrome, run character-sheet from a local server instead (`python3 -m http.server` in the same folder, then open `localhost:8000/character-sheet.html`).

**Cloud storage:** keeping `character-sheet.html` in Dropbox, Google Drive, or iCloud is fine - the file itself has no personal data. Your data lives in your browser's localStorage and in `context.md`. If you sync `context.md` to the cloud, it's no longer fully local.

**Claude:** anything you paste into Claude is processed by Anthropic. character-sheet is designed so you control exactly what gets shared - nothing leaves your machine automatically.

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

The younger generation is growing up with AI whether they want to or not. I'd rather it help them understand themselves and actually level up - then put the character sheet down and go live it.
