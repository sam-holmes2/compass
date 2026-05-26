# character-sheet

*The real value of character-sheet is the character you build away from it.*

Most journalling disappears into a void. Insights get forgotten, negative patterns repeat, and progress feels invisible. character-sheet turns self-reflection into an RPG: earn XP for understanding yourself, name your enemies, track your quests, and watch your character sheet grow more detailed over time.

🎮 **[Try the live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** — no download needed

<img width="1642" height="1116" alt="image" src="https://github.com/user-attachments/assets/7a3d1196-b1cf-49fd-b1b4-be3e9d98f2d5" />

---

**After a few sessions you'll have:**
- A Main Quest and side quests tracking what you're actually working on in life
- Named enemies: recurring negative patterns, limiting beliefs, and energy drains
- A skills list ranking what you're developing, what's under-levelled, and what's becoming a signature strength
- Achievements and classes capturing genuine growth and meaningful milestones
- A journal timeline linking entries to changes in your sheet

---

🔒 **Private by default.** A single `.html` file. No server, no accounts, no telemetry. Your data lives on your device. Nothing leaves unless you send it.

🤖 **AI is optional.** Works fully offline. Use a local model, a cloud AI, or no AI at all.

🚧 **Early work in progress.** All feedback welcome: [open an issue](https://github.com/sam-holmes2/character-sheet/issues) or [start a discussion](https://github.com/sam-holmes2/character-sheet/discussions).

---

## Privacy and security

Your data stays on your device. Nothing is transmitted automatically — you decide what leaves your machine and when.

- **`data.json` is your private diary.** Any AI provider you journal with (Claude, ChatGPT, etc.) may store or use what you share. Check their privacy settings to opt out.
- **Think before syncing `data.json` to cloud storage.** Uploading to Google Drive, Dropbox, or iCloud means trusting that provider with your journal. `character-sheet.html` and `instructions.md` are fine to sync.
- **Keep your API key in a password manager** (1Password, Bitwarden, Apple Passwords, etc.) and enable two-factor authentication on your AI provider account.
- **Enable full-disk encryption** on your device (FileVault on Mac, BitLocker on Windows). If your laptop is stolen, disk encryption is the barrier between a thief and your browser storage files.
- **Use [Firefox](https://www.firefox.com/) if possible.** Firefox isolates each local HTML file's storage. In Chrome and Edge, all local files share the same origin.
- **Close Ollama when you are done.** When running a local model, closing the terminal stops Ollama and prevents other browser pages from reaching it.

**Password lock.** The app has an optional password that encrypts all your data using AES-256-GCM with PBKDF2 key derivation (200,000 iterations). It protects against someone who opens your browser or reads your storage files directly. It does not protect against malware with access to browser memory or someone using your device while the app is already unlocked.

[Full threat model](journalling-threat-model.md) — privacy risks broken down across every journalling approach.

---

## Files in this repo

| File | What it is |
|------|------------|
| **[character-sheet.html](character-sheet.html)** | The app. Download and open in your browser. |
| **[instructions.md](instructions.md)** | Upload to your AI project knowledge (copy-paste workflow). |
| **[deep-dive.md](deep-dive.md)** | Structured interview for a fuller first session. |
| **[journalling-prompts.md](journalling-prompts.md)** | Optional. Upload alongside instructions.md for richer session prompts. |
| **[wiki.md](wiki.md)** | Full documentation for each tab. |
| **[tips.md](tips.md)** | Token usage, persistence, updating to new versions. |
| **[ollama-setup.md](ollama-setup.md)** | Ollama install, model selection, and troubleshooting. |
| **[ai-privacy-guide.md](ai-privacy-guide.md)** | Provider-by-provider privacy breakdown. |
| **[journalling-threat-model.md](journalling-threat-model.md)** | Privacy risk breakdown across all journalling approaches. |

---

## Choose your path

No account required for any option. Pick based on how private you want your data to be and how much setup you're willing to do.

| | **A. No AI** | **B. Local AI (Ollama)** | **C. Cloud AI, in-app** | **D. Cloud AI, copy-paste** |
|---|---|---|---|---|
| **Privacy** | Fully offline | Fully offline, nothing leaves your device | Your journal is sent to your AI provider | You control exactly what you share |
| **Cost** | Free | Free | Pay per use | Free tier available |
| **Setup** | Instant | ~10 minutes, one-time | ~5 minutes | ~5 minutes |
| **AI quality** | No AI | Good | Best | Best |

---

### A. No AI

Download and open `character-sheet.html`. Click any field to edit it directly. Export your data regularly with the download button (bottom right).

That's it. The whole app works offline with no AI involved.

---

### B. Local AI with Ollama

Everything runs on your own computer. No accounts, no subscriptions, and your journal never leaves your device.

**1. Download the app**

Go to [character-sheet.html](character-sheet.html) on GitHub, click the download icon (top right of the file view). Open it in your browser.

**2. Install Ollama and download a model**

See [ollama-setup.md](ollama-setup.md) for the full install guide and model recommendations.

Quick start: install Ollama, then run `ollama pull gemma3:4b` in a terminal. `gemma3:4b` works on most computers (8 GB RAM, ~4 GB download).

**3. Start Ollama with browser access**

Browsers cannot reach Ollama by default. Run the command for your OS in a terminal and keep it open while using the app:

| OS | Command |
|----|---------|
| **Mac** | `pkill -f "Ollama.app/Contents/MacOS" 2>/dev/null; pkill -f "ollama serve" 2>/dev/null; sleep 1; OLLAMA_ORIGINS="*" ollama serve` |
| **Linux** | `pkill -f "ollama serve" 2>/dev/null; sleep 1; OLLAMA_ORIGINS="*" ollama serve` |
| **Windows (PowerShell)** | `Stop-Process -Name ollama -Force -ErrorAction SilentlyContinue; Start-Sleep 1; $env:OLLAMA_ORIGINS="*"; ollama serve` |

Close the terminal when you are done to stop Ollama.

**4. Open the app and start chatting**

Click the chat icon (bottom bar), open Chat Settings (gear icon), confirm your model is selected, and start talking.

Having trouble? See [ollama-setup.md](ollama-setup.md#troubleshooting).

---

### C. Cloud AI with an API key (in-app chat)

Use the [live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html) (requires HTTPS) or your downloaded file.

> Your journal data is sent to your AI provider with each message. For sensitive journalling, use [Path B](#b-local-ai-with-ollama) instead. See [ai-privacy-guide.md](ai-privacy-guide.md) for provider details.

1. Create an account at [console.anthropic.com](https://console.anthropic.com) (separate from Claude.ai)
2. Go to **API Keys** and create a new key
3. Store the key in a password manager — it cannot be retrieved from Anthropic after creation
4. Enable two-factor authentication on your Anthropic account
5. In the app: click **Security** (bottom bar) and set a password first — the app won't save an API key without one
6. Open Chat Settings (gear icon in the chat panel), select a Claude model, and paste your key

> Your API key grants access to your Anthropic account. Anyone with it can generate charges. Never paste it into websites you don't trust.

---

### D. Cloud AI via copy-paste (no API key)

Use any AI — Claude, ChatGPT, Gemini — through its normal web interface. No in-app chat or API key needed.

**First session:**
1. Download [character-sheet.html](character-sheet.html) and [instructions.md](instructions.md) — click each link, then the download icon
2. Create an AI project (e.g. [claude.ai](https://claude.ai) → New Project)
3. Upload `instructions.md` to the project knowledge
4. Paste the [quickstart prompt](#quickstart-prompt) and start talking
5. At the end of the session, ask: *"Update my data.json based on our conversation."*
6. Upload the resulting `data.json` to project knowledge
7. Import into the app: click the upload icon (bottom right), paste the JSON, Import

> Your journal data is sent to your provider with each message. Check their privacy settings if this concerns you.

---

## Quickstart prompt

```
I'm setting up character-sheet, a gamified personal life dashboard. I've attached instructions.md which explains the data format.

Start by asking me what's going on in my life right now: what I'm working on, what's on my mind, what I'm trying to change. Keep it conversational, ask one thing at a time, and follow the thread. Never push me to share more than I want to.

Once you have a reasonable picture, generate my data.json using the format in instructions.md. We can fill in the gaps over time through regular sessions.
```

Optional: for a fuller first session, try the **[Deep Dive](deep-dive.md)** — a structured interview covering all main fields. For richer session prompts, also upload `journalling-prompts.md` to project knowledge alongside `instructions.md`.

---

## Each session (copy-paste workflow)

1. Start a new chat in your AI project — it already has your context from project knowledge
2. Journal freely, or pick a [session mode](#session-modes)
3. Ask your AI to *"Update my data."* For shorter sessions this produces a [Partial update](tips.md#partial-updates) to keep token usage low
4. Replace `data.json` in project knowledge: remove the old version, upload the new one
5. Sync the app: click the upload icon, paste the JSON, Import

**On mobile?** Ask your AI to write the JSON as a file: *"Write my updated data.json as a downloadable file."* Then use the file picker in the import modal. See [Mobile workflow](tips.md#mobile-workflow).

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

Stay in Freeflow (default) or invoke any mode mid-session just by naming it.

| Mode | Trigger phrase | Best for |
|------|----------------|----------|
| **Freeflow** | *(default)* | Following energy wherever it goes |
| **Coach** | `"coach mode"` | Specific goal, accountability, clear plan |
| **Introspection** | `"introspection mode"` | Blindspots, patterns, what you keep avoiding |
| **Guided** | `"guided mode"` | Not sure where to start, AI leads with prompts |
| **Catch-up** | `"catch-up mode"` | Been a while, fast broad sweep |
| **Debrief** | `"debrief mode"` | Review what's about to be written to JSON |

---

## XP and levelling

The AI controls all XP, and the main way to earn it is through journalling. Brain dump what's been happening, what you've worked through, what you've noticed about yourself, and the AI will reflect it back as progress on your sheet: updated quests, new skills, achievements unlocked, enemies named or defeated.

Made a breakthrough? Call it out and make the case for why it deserves recognition. Think something was undervalued? Push back. This forces you to articulate what actually changed (which deepens the insight) and builds a habit of genuinely noticing your own growth.

It's a conversational mirror, not a vending machine. You could easily cheat this system and defeat yourself in the process.

---

## Tips

- [Keeping token usage low](tips.md#keeping-token-usage-low)
- [Partial updates](tips.md#partial-updates)
- [What does and doesn't persist](tips.md#what-does-and-doesnt-persist)
- [Updating to a new version](tips.md#updating-to-a-new-version)

---

## Customising

character-sheet is free and open source. Both the app and instructions are designed to be modified.

- **Edit `instructions.md`** to change how your AI communicates, what it focuses on, how it scores progress, or what counts as an achievement. All changes stay in your own copy.
- **Edit `character-sheet.html`** directly to rename fields, adjust visual styles, or remove parts you don't use. It's a single file with no build step.

Contributions welcome: if you build something useful, [open a pull request](https://github.com/sam-holmes2/character-sheet/pulls) or [share it in discussions](https://github.com/sam-holmes2/character-sheet/discussions).

---

## Roadmap

- **Diagramming relationships** between quests, skills, enemies, etc.
- **Skill trees** — structured skill progression with branching paths
- **Export to PDF** — a read-only view of your sheet
- **Quest dependencies** — unlock side quests when others complete
- **Themes / skins** — alternate visual styles beyond the default dark RPG look
- **Sync / backup** — optional encrypted export or cloud sync without compromising local-first principles

The immediate focus is getting the app in front of real users, collecting feedback, and fixing bugs. Feature requests and bug reports welcome — [open an issue](https://github.com/sam-holmes2/character-sheet/issues).

---

## Why I built this

> *"We are longing for an understanding of the universe around us when we barely understand the universe within our minds."* — Northlane

AI supercharged journalling and made self-reflection genuinely useful for me, but every conversation started mostly from scratch. The real insights lived in chat logs I'd never reread. I wanted somewhere to see that reflection clearly, own it, and build on it over time.

I'm a professional cyber security consultant with real concerns about trusting any company with deep personal data. character-sheet was inspired by [Obsidian.md](https://obsidian.md/) and the principle that users should own their knowledge on their own devices. The app is a single HTML file with no server, no telemetry, and no accounts — and if you want to go further, pair it with a local model via Ollama so no journal content ever leaves your machine.

If social media can use gamification to hold attention and keep people scrolling, I'd rather use powerful technology to help people understand and improve themselves.

Ultimately, I built this because I wanted it to exist. [LFM](CONTRIBUTING.md).

---

## Support

character-sheet is free and always will be. If it's been useful to you, you can [sponsor the project on GitHub](https://github.com/sponsors/sam-holmes2).

I pledge 10% of anything received to the [Center for Humane Technology](https://www.humanetech.com/donate), a nonprofit working to ensure AI and social media serve human wellbeing rather than exploit it.

*character-sheet is not a replacement for professional mental health support. If you're struggling, please reach out to a qualified professional.*

---

## Digital artists wanted

If you're a designer who finds character-sheet useful and has ideas for a logo or visual identity, [I'd love to hear from you](https://github.com/sam-holmes2/character-sheet/issues).

---

*Companion to [team-sheet](https://sam-holmes2.github.io/team-sheet/team-sheet.html), an IFS inner parts mapping app built on the same local-first, AI-optional architecture. If character-sheet is Skyrim where you are the main character, team-sheet is Animal Crossing for understanding and befriending your inner world.*
