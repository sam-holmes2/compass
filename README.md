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
3. **Add `schema.md` to your project's knowledge** - in the project sidebar, click **Add content → Add files** and select `schema.md`. This is the persistent project knowledge panel — *not* a regular chat upload. It stays attached permanently so Claude always knows the format without you re-uploading it each session.
4. **Paste the quickstart prompt below** into the project and just start talking.
5. **At the end, ask Claude:** `"Generate my JSON and a starter context.md using schema.md."`
6. **Import your data** - open `character-sheet.html`, click `↑` (bottom right), paste the JSON, hit Import. Save `context.md` somewhere private.

Optionally add `journalling-prompts.md` to your project knowledge too — it gives Claude better prompts when you want to go deeper in a session.

---

## Quickstart prompt

Paste this into your Claude project to get started. Just talk — Claude will follow your lead and ask one thing at a time.

```
I'm setting up character-sheet, a personal life dashboard. I've attached schema.md which explains the data format.

Start by asking me what's going on in my life right now — what I'm working on, what's on my mind, what I'm trying to change. Keep it conversational, ask one thing at a time, and follow the thread rather than a checklist. Never push me to share more than I want to.

Once you have a reasonable picture — even if it's incomplete — generate the JSON using schema.md and a starter context.md. We can fill in the gaps over time through regular journalling sessions.
```

Want to populate more of your character sheet in one go? Try the **[Deep Dive](deep-dive.md)** — a structured interview that covers all the main fields.

---

## Keeping up to date

character-sheet is updated regularly. To get the latest version:

1. **Export your data first** — open the app, click `↓` (bottom right) and copy the JSON. Keep it somewhere safe, or paste it into your Claude project chat.
2. **Re-download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html)** — replace your local copy.
3. **Clear the old localStorage** — your browser may be holding onto state from the previous version. Clear it before opening the new file:
   - **Firefox:** go to `about:preferences#privacy` → Manage Data → search for the file name → Remove
   - **Chrome:** open the old file, open DevTools (F12) → Application → Storage → Local Storage → right-click and Clear
   - **Simpler alternative:** in the app, open the browser console (F12 → Console) and run `localStorage.clear()`, then refresh
4. **Re-import your data** — open the new file, click `↑`, paste your JSON back in.
5. **Re-download [`schema.md`](https://github.com/sam-holmes2/character-sheet/blob/master/schema.md)** — remove the old version from your Claude project knowledge and upload the new one. This keeps Claude's understanding of the format in sync.

No version numbers to track — just pull the latest files when you want fixes and new features.

---

## Each session after that

1. **Start a new chat** in your Claude project (don't continue the previous one — see [Keeping token usage low](#keeping-token-usage-low)).
2. **Journal** - brain dump freely. What happened recently, what's on your mind, what you're stuck on.
3. **End the session** - ask Claude: *"Update my JSON and context.md based on this chat."*
4. **Update your context** - replace your saved `context.md` with the new version Claude provides.
5. **Sync your dashboard** - open `character-sheet.html`, click `↑`, paste the JSON, Import.

You can also edit fields directly in the app and use `↓` Export to send changes back to Claude.

> **Keep your latest JSON in Claude.** Paste it into your project chat at the start of each session (or keep it pinned somewhere easy to find). Your data lives in your browser's localStorage — if you clear your browser data, switch browsers, or update the app, you'll need it to restore everything.

---

## Keeping token usage low

Claude charges by the token — roughly by how much text it reads and writes each message. A long conversation accumulates context and gets expensive fast. A few habits keep this manageable:

- **Start a new chat for each session.** This is the most important one. Each message in a conversation re-sends the entire history. After a long session the cost per message compounds quickly. Starting fresh keeps each session cheap.
- **Keep `context.md` concise.** It's loaded at the start of every session. The shorter it is, the cheaper each session starts. Claude will naturally expand it over time — push back if it gets verbose.
- **Don't paste your JSON unnecessarily.** Only paste it in when Claude needs to update it. For a pure journalling session where you're not changing any data, you don't need to include it.
- **Use project knowledge for stable files.** `schema.md` (and optionally `journalling-prompts.md`) live in project knowledge and don't count toward your chat context in the same way as pasted text.
- **One topic per session.** Unfocused sessions that wander across many areas generate longer JSON updates. A tight session — one theme, one quest, one pattern — is cheaper and often more useful.
- **Free tier users:** Claude's free tier has usage limits. If you hit them, the simplest fix is to wait for the limit to reset, or upgrade to Claude Pro for higher limits.

---

## What does and doesn't persist

Your data lives in two places: **localStorage** (the app) and **Claude** (your project chat). They only stay in sync when you explicitly import/export.

| What | Where it's saved | Survives browser clear? | Claude knows about it? |
|------|-----------------|------------------------|------------------------|
| Everything imported via `↑` | localStorage | No | Yes (it came from Claude) |
| Edits made directly in the app | localStorage | No | **Not unless you export `↓`** |
| Practice timer / checkbox state | localStorage | No | No |
| Status sliders (Focus, Energy, etc.) | localStorage | No | No |
| XP history | localStorage | No | Only if included in export |
| `context.md` | Your files | Until you delete it | Yes (you save it there) |

**The safe habit:** end every session with an export (`↓`), paste it into Claude, and ask it to update your JSON and context.md. That way Claude and the app always match, and you have a recovery copy.

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
| **[deep-dive.md](deep-dive.md)** | Alternative starting prompt — a structured interview that populates more of your character sheet in one session. |
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

