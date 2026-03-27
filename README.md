# character-sheet

**Turn your journal into a living dashboard for your life.**

*The real value of character-sheet is the character you build away from it.*

**[Check out Example Steve's character-sheet](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** - live demo opens in your browser, no download needed. 

> Early work in progress. ALL feedback is very welcome - open an issue or contact Sam directly

> **Designed for desktop use.** character-sheet is built for a desktop browser (1024px+ wide). It will open on mobile but the layout is not optimised for small screens — some sections will be cramped or require horizontal scrolling. Mobile support is on the roadmap.

---

## Privacy (quick note)

Everything stays on your machine. Nothing is sent anywhere unless you paste it into Claude. A few things worth knowing:

- What you share with Claude is processed by Anthropic - [read their data retention policy](https://privacy.claude.com/en/articles/10023548-how-long-do-you-store-my-data). Since this is personal journalling, we recommend turning off **"Help improve Claude"** in your Claude settings (Profile > Privacy) to stop your conversations being used for model training.
- Don't use this on a shared computer.
- Firefox is the safest browser to use - see [Security](#security) for why.

---

## Setup

You'll need: a free [Claude account](https://claude.ai) and the two files below.

1. **Download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html) and [`schema.md`](https://github.com/sam-holmes2/character-sheet/blob/master/schema.md)** - click each link, then the download icon (top right of the file view).
2. **Create a Claude Project** - go to [claude.ai](https://claude.ai), click New Project in the left sidebar.
3. **Upload `schema.md` to the project** - click Add content. It stays attached permanently so Claude always knows the format.
4. **Paste the Quickstart prompt below** into the project and answer Claude's questions. Share only what you're comfortable with.
5. **At the end, ask Claude:** to `"Generate my JSON and a starter context.md using schema.md."`
6. **Import your data** - open `character-sheet.html`, click `↑` (bottom right), paste the JSON, hit Import. Save `context.md` somewhere private.

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

## Keeping up to date

character-sheet is updated regularly. To get the latest version:

1. **Re-download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html)** — replace your local copy. Your data lives in your browser's localStorage, not in the file, so it won't be lost.
2. **Re-download [`schema.md`](https://github.com/sam-holmes2/character-sheet/blob/master/schema.md)** — remove the old version from your Claude project and upload the new one. This keeps Claude's understanding of the format in sync.

No version numbers to track — just pull the latest files when you want to pick up fixes and new features.

---

## Each session after that

1. **Journal** - brain dump freely in your Claude project. What happened recently, what's on your mind, what you're stuck on.
2. **End the session** - ask Claude: *"Update my JSON and context.md based on this chat."*
3. **Update your context** - replace your saved `context.md` with the new version Claude provides.
4. **Sync your dashboard** - open `character-sheet.html`, click `↑`, paste the JSON, Import.

You can also edit fields directly in the app and use `↓` Export to send changes back to Claude.

---

## Tabs at a glance

| Tab | What it shows |
|-----|---------------|
| **Combat** | Up to 3 practice trackers (timer, checkbox, or number), daily distribution pie chart, XP log, and Claude's read on where you're at. |
| **Balance** | The four elements - Air / Fire / Water / Earth - each scored and detailed. |
| **Quests** | Main quest, side quests with progress, completed quests. |
| **Skills** | Skills by mastery level. Underlevelled vs signature strengths. |
| **Enemies** | Active patterns, limiting beliefs, and drains — everything working against you. |
| **Inventory** | Allies and flow sources. |
| **Achievements** | Unlocked milestones and character classes. |
| **Journal** | Chronological journal with summarised chapters - individual sessions logged with insights, tensions, and tags. |

See [wiki.md](wiki.md) for a detailed breakdown of each tab and feature.

---

## XP and levelling up

Claude controls all XP. You can't award it yourself - but you can (and should) negotiate. Made a breakthrough? Call it out. Think Claude undervalued something? Push back. It's meant to be a conversation, not a vending machine.

Claude awards XP for completing quests, levelling up skills, crossing element mastery thresholds, and genuine breakthroughs. It deducts XP when you fall back into named patterns. Rewards scale with how hard something actually was for you.

Those inclined could of course easily turn it into a pointless "cheat-sheet" and defeat themselves :)

---

## Files in this repo

| File | What it is |
|------|------------|
| **[character-sheet.html](character-sheet.html)** | The app itself. Open this in your browser. All logic, styles, and default demo data are self-contained in one file. |
| **[schema.md](schema.md)** | Upload this to your Claude project. It tells Claude the JSON format and how to behave as a journalling companion. |
| **[journalling-prompts.md](journalling-prompts.md)** | Optional. Upload to your Claude project for deeper session prompts. |
| **[wiki.md](wiki.md)** | Full documentation for each tab and feature. |
| **[steve-example-data.json](steve-example-data.json)** | The demo data loaded by default when you first open the app. Not needed after you import your own data. |
| **[README.md](README.md)** | This file. |

---

## Security

**Ideally, use [Firefox](https://www.firefox.com/) for character-sheet** In Chrome and Edge, all local HTML files share the same storage origin - meaning any other HTML file you open in the same browser could technically read your character-sheet data. Firefox gives each local file its own isolated origin, so this risk doesn't apply.

If you prefer Chrome, you could run character-sheet from a local server instead (`python3 -m http.server` in the same folder, then open `localhost:8000/character-sheet.html`). OR try out firefox and you might benefit from the separation of a dedicated browser just for character-sheet. 

**Cloud storage:** keeping `character-sheet.html` in Dropbox, Google Drive, or iCloud is fine - the file itself has no personal data. Your data lives in your browser's localStorage and in `context.md`. If you sync `context.md` to the cloud, it's no longer fully local.

**Claude:** anything you paste into Claude is processed by Anthropic. character-sheet is designed so you control exactly what gets shared - nothing leaves your machine automatically.

---

## [ALTERNATIVE] Offline use

You could also just download and manually use the `character-sheet.html` file as a plain RPG-style life tracker without Claude or any AI entirely. No accounts, no internet, no data shared with anyone.


## Roadmap

Coming up (no fixed timeline — this is a side project):

- **Mobile support** — the app currently assumes a desktop viewport; proper mobile layout is planned
- **Recurring quests** — quests that reset on a schedule (daily habits, weekly reviews)
- **Health and mana bars** — resource tracking directly on the main dashboard
- **Bug fixes and general polish** across all tabs

Have a feature request or found a bug? Open an issue.

---

## Why I built this

> *"We are longing for an understanding of the universe around us when we barely understand the universe within our minds."*
> — Northlane

- AI made journalling and self-reflection genuinely useful for me, but every conversation started mostly from scratch. The real insights lived in chat logs I'd never reread. 
- The line between journalling, therapy, and using AI as a mirror was already blurring. I wanted somewhere to see that reflection clearly, own it, and build on it over time.
- I'm a professional cyber security consultant with real concerns about trusting *any* company with deep personal data. The uncomfortable reality is that this is already happening at scale, whether people are intentional about it or not. character-sheet was inspired by my love of [Obsidian.md](https://obsidian.md/) and the idea that users should maintain (at least some) control over their knowledge on their own devices where possible. 
- I've been an RPG and D&D nerd basically my whole life. If social media companies etc can use gamification to hijack progression mechanics to hold attention and keep people scrolling, I'd rather use the same tools to help people understand and improve themselves instead. The mechanics aren't the problem, it's where the incentives are currently pointed at. 
- The younger generation is growing up with AI whether they want to or not. character-sheet is my one small attempt to harness the positive potential this brings.


Ultimately, I built this because I wanted it to exist. If you've found your way here, maybe you did too. [LFM](CONTRIBUTING.md)

