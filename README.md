# character-sheet

**Turn your journal into a living dashboard for your life.**

*The real value of character-sheet is the character you build away from it.*

**[Try the live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** - no download needed.

> Early work in progress - all feedback welcome. [Open an issue](https://github.com/sam-holmes2/character-sheet/issues), [start a discussion](https://github.com/sam-holmes2/character-sheet/discussions), or [find me on GitHub](https://github.com/sam-holmes2).

---

## Setup or update

Follow these same steps whether you're setting up for the first time or updating to a new version after significant changes - the app will prompt you when an update is worth doing.

You need an AI with persistent project context (e.g. Claude Projects) and the two files below.

1. **Download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html) and [`instructions.md`](https://github.com/sam-holmes2/character-sheet/blob/master/instructions.md)** - click each link, then the download icon (top right).
2. **Create (or open) your AI project** - e.g. [claude.ai](https://claude.ai) → New Project.
3. **Upload `instructions.md` to project knowledge** - Project sidebar → Add content → Add files. Replace the old version if updating.
4. **Paste the quickstart prompt** below and start talking.
5. **At the end of your session, ask:** `"Update my data.json based on our conversation."`
6. **Add `data.json` to project knowledge** - same as step 3. If you already have one there, remove it first, then upload the new one.
7. **Import into the app** - open `character-sheet.html`, click `↑` (bottom right), paste the JSON, Import.

[OPTIONAL] Also upload `journalling-prompts.md` to project knowledge for richer session prompts.

---

## Quickstart prompt

```
I'm setting up character-sheet, a personal life dashboard. I've attached instructions.md which explains the data format.

Start by asking me what's going on in my life right now - what I'm working on, what's on my mind, what I'm trying to change. Keep it conversational, ask one thing at a time, and follow the thread. Never push me to share more than I want to.

Once you have a reasonable picture, generate my data.json using the format in instructions.md. We can fill in the gaps over time through regular sessions.
```

[OPTIONAL] Want to populate more of your sheet in one go? Try the **[Deep Dive](deep-dive.md)** - a structured interview covering all main fields. There are also copyable session starter prompts inside the Journal tab of the app itself.

---

## Each session

1. **Start a new chat** in your AI project. The AI already has your context from project knowledge.
2. **Journal** - brain dump freely, or pick a mode (see below).
3. **End the session** - ask: *"Update my data.json based on this chat."*
4. **Replace `data.json` in project knowledge** - remove the old version, upload the new one.
5. **Sync the app** - click `↑`, paste the JSON, Import.

You can also edit fields directly in the app and use `↓` Export to get updated JSON to paste back to your AI.

---

## Session modes

Stay in **Freeflow** (default) or invoke any mode mid-session just by naming it.

| Mode | Trigger phrase | Best for |
|------|----------------|----------|
| **Freeflow** | *(default)* | Following energy wherever it goes |
| **Coach** | `"coach mode"` | Specific goal, accountability, clear plan |
| **Introspection** | `"introspection mode"` | Blindspots, patterns, what you keep avoiding |
| **Guided** | `"guided mode"` | Not sure where to start - AI leads with prompts |
| **Catch-up** | `"catch-up mode"` | Been a while - fast, broad sweep |
| **Debrief** | `"debrief mode"` | Review what's about to be written to JSON |

---

## Tabs at a glance

| Tab | What it shows |
|-----|---------------|
| **Combat** | Status check-in (Focus / Energy / Interest / Purpose) and recurring practice trackers |
| **Balance** | The four elements (Air / Fire / Water / Earth), scored, detailed, and charted over time |
| **Quests** | Main quest, side quests with progress, completed quests |
| **Skills** | Core skills radar, keystone skill, all skills ranked by priority, XP history |
| **Enemies** | Active patterns, limiting beliefs, compulsions, distortions, and the graveyard |
| **Allies** | Everything working for you: loot, spells, liberating beliefs, and flow sources |
| **Achievements** | Titles (insights, deeds, transmutations, surrenders) and character classes |
| **Journal** | Progression timeline, last session read, session starters, and chapter entries |

See [wiki.md](wiki.md) for a detailed breakdown of each tab.

---

## XP and levelling

The AI controls all XP - and the main way to earn it is through journalling. Brain dump what's been happening, what you've worked through, what you've noticed about yourself, and the AI will reflect it back as progress on your sheet: updated quests, new skills, achievements unlocked, enemies named or defeated.

The hook is that you have to negotiate your rewards. Made a breakthrough? Call it out and make the case for why it deserves recognition. Think something was undervalued? Push back. This process does two things at once: it forces you to articulate what actually changed (which deepens the insight), and it builds a habit of being genuinely grateful for positive changes rather than glossing over them. You gain XP, new classes, and titles by recognising your own growth - not just by grinding.

It's a conversation, not a vending machine. But it's also a mirror.

---

## Privacy and security

- **What you share with an AI is subject to that provider's policies.** When you paste `data.json` into ChatGPT, Claude, or any other cloud AI, that provider may store, review, or use it for training. Check their privacy settings to limit retention or opt out of training use.
- **`data.json` is the sensitive part.** It contains everything you've journalled - treat it like a private diary. `character-sheet.html` and `instructions.md` are identical for all users and safe to share freely.
- **Nothing leaves your machine unless you send it.** By default, everything is local. Data only goes anywhere if you paste, upload, or sync it.
- **Think before syncing `data.json` to cloud storage.** Uploading to Google Drive, Dropbox, or iCloud means trusting that provider with your journal. `character-sheet.html` and `instructions.md` are fine to sync.
- **AI is optional.** The app works fully offline as a plain tracker. For full privacy, use a local model like [Ollama](https://ollama.com) and paste its output manually - nothing ever leaves your machine.
- **Use [Firefox](https://www.firefox.com/) if possible.** In Chrome and Edge, all local HTML files share the same storage origin, so a malicious local file you open could read your data. Firefox isolates each file. If you prefer another browser, run the app from a local server instead: `python3 -m http.server --bind 127.0.0.1`, then open `localhost:8000/character-sheet.html`.

**[Full journalling threat model](journalling-threat-model.md)** - a detailed breakdown of privacy risks across every journalling approach, and where character-sheet fits in.

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

Up next, in rough priority order:

- **User onboarding** - smoother first-run experience, guided setup flow
- **Multiple character sheets** - support for more than one profile in a single browser
- **Export to PDF / shareable snapshot** - a read-only view of your sheet
- **Expanded practice types** - habits, streaks, linked quests
- **Quest dependencies** - unlock side quests when others complete
- **Skill trees** - structured skill progression with branching paths
- **Relationships graph** - visual map of allies and enemies
- **Themes / skins** - alternate visual styles beyond the default dark RPG look
- **Sync / backup** - optional encrypted export or cloud sync (without compromising local-first principles)

The immediate focus is getting the app in front of real users, collecting feedback, and fixing bugs. Feature requests and bug reports welcome - [open an issue](https://github.com/sam-holmes2/character-sheet/issues).

---

## Why I built this

> *"We are longing for an understanding of the universe around us when we barely understand the universe within our minds."* - Northlane

AI made journalling and self-reflection genuinely useful for me, but every conversation started mostly from scratch. The real insights lived in chat logs I'd never reread. I wanted somewhere to see that reflection clearly, own it, and build on it over time.

I'm a professional cyber security consultant with real concerns about trusting any company with deep personal data. character-sheet was inspired by [Obsidian.md](https://obsidian.md/) and the principle that users should own their knowledge on their own devices. The app is a single HTML file with no server, no telemetry, and no accounts, and if you want to go further, pair it with a local LLM like [Ollama](https://ollama.com) so no journal content ever leaves your machine.

If social media can use gamification to hold attention and keep people scrolling, I'd rather use the same tools to help people understand and improve themselves.

Ultimately, I built this because I wanted it to exist. [LFM](CONTRIBUTING.md)
