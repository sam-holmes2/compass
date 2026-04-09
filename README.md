# character-sheet

**Turn your journal into a living dashboard for your life.**

*The real value of character-sheet is the character you build away from it.*

**[Try the live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** — no download needed.

> ⚠️ Early work in progress — all feedback welcome. [Open an issue](https://github.com/sam-holmes2/character-sheet/issues), [start a discussion](https://github.com/sam-holmes2/character-sheet/discussions), or [find me on GitHub](https://github.com/sam-holmes2).

---

## Privacy & security
- **Only `data.json` is sensitive.** `character-sheet.html` and `instructions.md` are the same for every user — share them freely. `data.json` holds everything you've journalled; treat it like a private diary and don't use this on a shared computer. 
- By default, everything stays on your machine. Nothing is sent anywhere unless you paste it into an AI.
- What you share with an AI is subject to that provider's data retention policy. Check their privacy settings to opt out of training data use.
- **Use [Firefox](https://www.firefox.com/) if possible.** In Chrome and Edge, all local HTML files share the same storage origin, meaning any other local HTML file you open could technically read your journalling data. Firefox gives each local file its own isolated origin. If you prefer another browser and care about security, ideally run characer-sheet from a local server by installing Python and running `python3 -m http.server` in the same folder, then open `localhost:8000/character-sheet.html`.
- **AI is optional.** You can use character-sheet as a plain offline tracker with no AI at all.
- **Local LLMs are supported.** Use a local model (e.g. [Ollama](https://ollama.com)) and paste its output in manually — no journal content ever leaves your machine.
- **Cloud storage** (Dropbox, Google Drive, iCloud) is fine for `character-sheet.html` and `instructions.md` — they contain no personal data. Think twice before syncing `data.json` to unencrypted cloud storage.

**→ [Full journalling threat model](journalling-threat-model.md)** — privacy risks and mitigations across every journalling approach, and where character-sheet fits in.

---

## Setup

You need: an AI with persistent project context (e.g. Claude Projects) and the two files below.

1. **Download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html) and [`instructions.md`](https://github.com/sam-holmes2/character-sheet/blob/master/instructions.md)** — click each link, then the download icon (top right).
2. **Create an AI project** — e.g. [claude.ai](https://claude.ai) → New Project.
3. **Add `instructions.md` to project knowledge** — Project sidebar → Add content → Add files.
4. **Paste the quickstart prompt** below and start talking.
5. **At the end of your first session, ask:** `"Generate my data.json based on our conversation and instructions.md."`
6. **Add `data.json` to project knowledge** — same as step 3.
7. **Import into the app** — open `character-sheet.html`, click `↑` (bottom right), paste the JSON, Import.

Optionally add `journalling-prompts.md` to project knowledge for richer session prompts.

---

## Quickstart prompt

```
I'm setting up character-sheet, a personal life dashboard. I've attached instructions.md which explains the data format.

Start by asking me what's going on in my life right now - what I'm working on, what's on my mind, what I'm trying to change. Keep it conversational, ask one thing at a time, and follow the thread. Never push me to share more than I want to.

Once you have a reasonable picture, generate my data.json using the format in instructions.md. We can fill in the gaps over time through regular sessions.
```

Want to populate more of your sheet in one go? Try the **[Deep Dive](deep-dive.md)** — a structured interview covering all main fields. There are also copyable session starter prompts inside the Journal tab of the app itself.

---

## Each session

1. **Start a new chat** in your AI project. The AI already has your context from project knowledge.
2. **Journal** — brain dump freely, or pick a mode (see below).
3. **End the session** — ask: *"Update my data.json based on this chat."*
4. **Replace `data.json` in project knowledge** — remove the old version, upload the new one.
5. **Sync the app** — click `↑`, paste the JSON, Import.

You can also edit fields directly in the app and use `↓` Export to get updated JSON to paste back to your AI.

---

## Session modes

Stay in **Freeflow** (default) or invoke any mode mid-session just by naming it.

| Mode | Element | Trigger phrase | Best for |
|------|---------|----------------|----------|
| 💧 **Freeflow** | Water | *(default)* | Following energy wherever it goes |
| 🔥 **Coach** | Fire | `"coach mode"` | Specific goal, accountability, clear plan |
| 🌬️ **Introspection** | Air | `"introspection mode"` | Blindspots, patterns, what you keep avoiding |
| 🌱 **Guided** | Earth | `"guided mode"` | Not sure where to start — AI leads |
| 🌀 **Catch-up** | — | `"catch-up mode"` | Been a while — fast, broad sweep |
| 📋 **Debrief** | — | `"debrief mode"` | Review what's about to be written to JSON |

---

## Tabs at a glance

| Tab | What it shows |
|-----|---------------|
| **Combat** | Status check-in (Focus / Energy / Interest / Purpose) and recurring practice trackers |
| **Balance** | The four elements — Air / Fire / Water / Earth — scored, detailed, and charted over time |
| **Quests** | Main quest, side quests with progress, completed quests |
| **Skills** | Core skills radar, keystone skill, all skills ranked by priority, XP history |
| **Enemies** | Active patterns, limiting beliefs, compulsions, distortions, and the graveyard |
| **Allies** | Everything working for you — loot, spells, liberating beliefs, and flow sources |
| **Achievements** | Titles (insights, deeds, transmutations, surrenders) and character classes |
| **Journal** | Progression timeline, last session read, session starters, and chapter entries |

See [wiki.md](wiki.md) for a detailed breakdown of each tab.

---

## XP and levelling

The AI controls all XP. You can negotiate — made a breakthrough? Call it out. Think something was undervalued? Push back. It's a conversation, not a vending machine.

---

## Tips

- [Keeping token usage low](tips.md#keeping-token-usage-low)
- [What does and doesn't persist](tips.md#what-does-and-doesnt-persist)
- [Updating to a new version](tips.md#updating-to-a-new-version)

---

## Files in this repo

| File | What it is |
|------|------------|
| **[character-sheet.html](character-sheet.html)** | The app. Open in your browser. |
| **[instructions.md](instructions.md)** | Upload to your AI project knowledge. |
| **[deep-dive.md](deep-dive.md)** | Structured interview for a fuller first session. |
| **[journalling-prompts.md](journalling-prompts.md)** | Optional. Upload to project knowledge for deeper session prompts. |
| **[wiki.md](wiki.md)** | Full documentation for each tab. |
| **[tips.md](tips.md)** | Token usage, persistence, and updating. |
| **[journalling-threat-model.md](journalling-threat-model.md)** | Privacy risk breakdown across all journalling approaches. |

---

## Roadmap

Completed recently: mobile support, recurring quests, health and mana bars.

Up next — rough priority order:

- **User onboarding** — smoother first-run experience, guided setup flow
- **Multiple character sheets** — support for more than one profile in a single browser
- **Export to PDF / shareable snapshot** — a read-only view of your sheet
- **Expanded practice types** — habits, streaks, linked quests
- **Quest dependencies** — unlock side quests when others complete
- **Skill trees** — structured skill progression with branching paths
- **Relationships graph** — visual map of allies and enemies
- **Themes / skins** — alternate visual styles beyond the default dark RPG look
- **Sync / backup** — optional encrypted export or cloud sync (without compromising local-first principles)

The immediate focus is getting the app in front of real users, collecting feedback, and fixing bugs. Feature requests and bug reports welcome — [open an issue](https://github.com/sam-holmes2/character-sheet/issues).

---

## Why I built this

> *"We are longing for an understanding of the universe around us when we barely understand the universe within our minds."* — Northlane

AI made journalling and self-reflection genuinely useful for me, but every conversation started mostly from scratch. The real insights lived in chat logs I'd never reread. I wanted somewhere to see that reflection clearly, own it, and build on it over time.

I'm a professional cyber security consultant with real concerns about trusting any company with deep personal data. character-sheet was inspired by [Obsidian.md](https://obsidian.md/) and the principle that users should own their knowledge on their own devices. The app is a single HTML file with no server, no telemetry, and no accounts — and if you want to go further, pair it with a local LLM like [Ollama](https://ollama.com) so no journal content ever leaves your machine.

If social media can use gamification to hold attention and keep people scrolling, I'd rather use the same tools to help people understand and improve themselves.

Ultimately, I built this because I wanted it to exist. [LFM](CONTRIBUTING.md)
