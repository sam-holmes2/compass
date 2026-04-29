# character-sheet

*The real value of character-sheet is the character you build away from it.*

Most journalling disappears into a void. Insights get forgotten, negative patterns repeat, and progress feels invisible. character-sheet turns self-reflection into an RPG: earn XP for understanding yourself, name your enemies, track your quests, and watch your character sheet grow more detailed over time.

Journal with your AI, paste back the JSON, watch your character sheet update. No AI? Edit everything directly. It works fully standalone.

🎮 **[Try the live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** (no download needed)

<img width="1642" height="1116" alt="image" src="https://github.com/user-attachments/assets/7a3d1196-b1cf-49fd-b1b4-be3e9d98f2d5" />

---

**After a few sessions you'll have:**
- A Main Quest and side quests tracking what you're actually working on in life
- Named enemies: recurring negative patterns, limiting beliefs, and drains with real labels
- A skills list ranking what you're developing, what's under-levelled, and what's becoming a strength
- Achievements and classes capturing genuine growth — milestones your AI recognises and names
- A journal timeline linking entries to changes in your sheet

---

🔒 **Private by default.** A single `.html` file. No server, no accounts, no telemetry. Your data is a local file you own — nothing leaves your device unless you choose to send it. If you journal with an AI, check your provider's privacy settings. Local models like [Ollama](https://ollama.com) work for fully offline journalling.

🤖 **Works with any AI.** Claude, ChatGPT, Gemini, or any local model. Prefer no AI? Edit fields directly in the app and export your data.

🚧 **Early work in progress.** All feedback welcome: [open an issue](https://github.com/sam-holmes2/character-sheet/issues), [start a discussion](https://github.com/sam-holmes2/character-sheet/discussions), or [find me on GitHub](https://github.com/sam-holmes2).

---

## Setup or update

Follow these same steps whether you're setting up for the first time or updating after a significant version change. To check for updates, go to Help → Check for updates within the app.

1. **Download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html) and [`instructions.md`](https://github.com/sam-holmes2/character-sheet/blob/master/instructions.md):** click each link, then the download icon (top right).
2. **Create (or open) your AI project:** e.g. [claude.ai](https://claude.ai) → New Project.
3. **Upload `instructions.md` to project knowledge:** Project sidebar → Add content → Add files. Replace the old version if updating.
4. **Paste the quickstart prompt** below and start talking.
5. **At the end of your session, ask:** `"Update my data.json based on our conversation."`
6. **Add `data.json` to project knowledge:** same as step 3. (If updating: remove the old version first, then upload the new one.)
7. **Import into the app:** open `character-sheet.html`, click `↑` (bottom right), paste the JSON, Import.

**No AI?** Just download and open `character-sheet.html`. Click any field to edit it directly. The import/export workflow is entirely optional.

---

## Quickstart prompt

```
I'm setting up character-sheet, a gamified personal life dashboard. I've attached instructions.md which explains the data format.

Start by asking me what's going on in my life right now - what I'm working on, what's on my mind, what I'm trying to change. Keep it conversational, ask one thing at a time, and follow the thread. Never push me to share more than I want to.

Once you have a reasonable picture, generate my data.json using the format in instructions.md. We can fill in the gaps over time through regular sessions.
```

[OPTIONAL] Want to populate more of your sheet in one go? Try the **[Deep Dive](deep-dive.md)** — a structured interview covering all main fields. There are also copyable session starter prompts inside the Journal tab of the app itself.

[OPTIONAL] For richer session prompts, upload `journalling-prompts.md` to project knowledge alongside `instructions.md`. This powers **Guided** mode and other structured session types.

---

## Each session

1. **Start a new chat** in your AI project. The AI already has your context from project knowledge.
2. **Journal:** brain dump freely, or pick a mode (see below).
3. **End the session:** ask your AI to *"Update my data."* For smaller sessions this produces a [Partial update](tips.md#partial-updates) to keep token usage low.
4. **Replace `data.json` in project knowledge:** remove the old version, upload the new one.
5. **Sync the app:** click `↑`, paste the JSON, Import.

**On mobile?** Ask your AI to write the JSON as a file: *"Write my updated data.json as a downloadable file."* Then use the **↑ data.json** button in the import modal to select it. See [Mobile workflow](tips.md#mobile-workflow).

You can also edit fields directly in the app and use `↓` Export to get updated JSON to paste back to your AI, keeping its context current.

---

## Tabs at a glance

| Tab | What it shows |
|-----|---------------|
| **Combat** | Status check-in (Focus / Energy / Interest / Purpose) and regular quest trackers |
| **Balance** | The four elements (Air / Fire / Water / Earth), scored, detailed, and charted over time |
| **Quests** | Main quest, side quests with progress, completed quests |
| **Skills** | Core skills radar (Rest, Movement, Nutrition, Connection), all skills ranked by priority, XP history |
| **Enemies** | Active negative patterns, limiting beliefs, compulsions, distortions, and the graveyard. Bosses are root patterns; minions are symptoms. |
| **Allies** | Everything working for you: loot, spells, liberating beliefs, and flow sources |
| **Achievements** | Titles (insights, deeds, transmutations, surrenders) and character classes |
| **Journal** | Progression timeline, last session read, session starters, and chapter entries |

See [wiki.md](wiki.md) for a detailed breakdown of each tab.

---

## Session modes

Stay in **Freeflow** (default) or invoke any mode mid-session just by naming it.

| Mode | Trigger phrase | Best for |
|------|----------------|----------|
| **Freeflow** | *(default)* | Following energy wherever it goes |
| **Coach** | `"coach mode"` | Specific goal, accountability, clear plan |
| **Introspection** | `"introspection mode"` | Blindspots, patterns, what you keep avoiding |
| **Guided** | `"guided mode"` | Not sure where to start — AI leads with prompts |
| **Catch-up** | `"catch-up mode"` | Been a while — fast, broad sweep |
| **Debrief** | `"debrief mode"` | Review what's about to be written to JSON |

---

## XP and levelling

The AI controls all XP — and the main way to earn it is through journalling. Brain dump what's been happening, what you've worked through, what you've noticed about yourself, and the AI will reflect it back as progress on your sheet: updated quests, new skills, achievements unlocked, enemies named or defeated.

Made a breakthrough? Call it out and make the case for why it deserves recognition. Think something was undervalued? Push back. This forces you to articulate what actually changed (which deepens the insight) and builds a habit of genuinely noticing your own growth.

It's a conversational mirror, not a vending machine. You could easily cheat this system and defeat yourself in the process.

---

## Tips

- [Keeping token usage low](tips.md#keeping-token-usage-low)
- [Partial updates](tips.md#partial-updates)
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
- **User onboarding** — Improved (less overwhelming) new user experience
- **Diagramming relationships** — between quests, skills, enemies, etc.
- **Skill trees** — structured skill progression with branching paths
- **Export to PDF** — a read-only view of your sheet
- **Quest dependencies** — unlock side quests when others complete
- **Themes / skins** — alternate visual styles beyond the default dark RPG look
- **Sync / backup** — optional encrypted export or cloud sync (without compromising local-first principles)

The immediate focus is getting the app in front of real users, collecting feedback, and fixing bugs. Feature requests and bug reports welcome — [open an issue](https://github.com/sam-holmes2/character-sheet/issues).

---

## Customising

character-sheet is free and open source. The app and instructions are both designed to be modified. There is no one-size-fits-all approach to what you track, how you score it, or how your AI talks to you.

- **Edit `instructions.md`** to change how your AI communicates, what it focuses on, which fields it populates, how it scores progress, or what counts as an achievement. All changes stay in your own copy.
- **Edit `character-sheet.html`** directly to rename fields, adjust visual styles, add new data sections, or remove parts you don't use. It's a single file with no build step.

Contributions welcome: if you build something useful, [open a pull request](https://github.com/sam-holmes2/character-sheet/pulls) or [share it in discussions](https://github.com/sam-holmes2/character-sheet/discussions).

---

## Support

character-sheet is free and always will be. If it's been useful to you, you can [sponsor the project on GitHub](https://github.com/sponsors/sam-holmes2).

I pledge 10% of anything received to the [Center for Humane Technology](https://www.humanetech.com/donate), a nonprofit working to ensure AI and social media serve human wellbeing rather than exploit it.

*character-sheet is not a replacement for professional mental health support. If you're struggling, please reach out to a qualified professional.*

---

## Privacy and security

Your data stays on your device. The copy-paste JSON workflow is not just a technical mechanism — it is the privacy model. Nothing is transmitted automatically. You decide what leaves your machine and when.

- **`data.json` is your private diary.** Nothing leaves your machine unless you send it. Any AI provider you journal with (Claude, ChatGPT, etc.) may store, review, or use what you share for training. Check their privacy settings to opt out.
- **Think before syncing `data.json` to cloud storage.** Uploading to Google Drive, Dropbox, or iCloud means trusting that provider with your journal. `character-sheet.html` and `instructions.md` are fine to sync.
- **AI is optional.** The app works fully offline as a plain tracker. For full privacy, use a local model like [Ollama](https://ollama.com) and paste its output manually.
- **Use [Firefox](https://www.firefox.com/) if possible**, since it isolates each local HTML file's storage. In Chrome and Edge, all local files share the same origin, so a malicious local file you open could read your data.

**PIN lock.** The app has an optional PIN that encrypts all your data in `localStorage` using AES-256-GCM with PBKDF2 key derivation (200,000 iterations). What it protects: someone who opens your browser and navigates to the app, or reads your browser's storage files directly. What it does not protect against: someone with full access to your device while the app is already unlocked, malware with access to browser memory, or your browser's developer tools while the tab is open. Think of it as a screen lock, not full-disk encryption.

**[Full journalling threat model](journalling-threat-model.md)** — a detailed breakdown of privacy risks across every journalling approach.

---

## Why I built this

> *"We are longing for an understanding of the universe around us when we barely understand the universe within our minds."* — Northlane

AI supercharged journalling and made self-reflection genuinely useful for me, but every conversation started mostly from scratch. The real insights lived in chat logs I'd never reread. I wanted somewhere to see that reflection clearly, own it, and build on it over time.

I'm a professional cyber security consultant with real concerns about trusting any company with deep personal data. character-sheet was inspired by [Obsidian.md](https://obsidian.md/) and the principle that users should own their knowledge on their own devices. The app is a single HTML file with no server, no telemetry, and no accounts — and if you want to go further, pair it with a local LLM like [Ollama](https://ollama.com) so no journal content ever leaves your machine.

If social media can use gamification to hold attention and keep people scrolling, I'd rather use the same tools to help people understand and improve themselves.

Ultimately, I built this because I wanted it to exist. [LFM](CONTRIBUTING.md).

---

*Companion to [team-sheet](https://sam-holmes2.github.io/team-sheet/team-sheet.html), an IFS inner parts mapping app built on the same local-first, AI-optional architecture. If character-sheet is Skyrim where you are the main character, team-sheet is Animal Crossing for understanding and befriending your inner world.*

## Digital artists wanted!
If you're a designer who finds character-sheet useful and has ideas for a logo or visual identity, [I'd love to hear from you](https://github.com/sam-holmes2/character-sheet/issues).
