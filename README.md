# character-sheet

*The real value of character-sheet is the character you build away from it.*

Most journalling disappears into a void. Insights get forgotten, negative patterns repeat, and progress feels invisible. character-sheet turns self-reflection into an RPG: earn XP for understanding yourself, name your enemies, track your quests, and watch your character sheet grow more detailed over time.

Journal with your AI, paste back the JSON, watch your character sheet update. No AI? Edit everything directly. It works fully standalone.

🎮 **[Try the live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** (no download needed)

<img width="1642" height="1116" alt="image" src="https://github.com/user-attachments/assets/7a3d1196-b1cf-49fd-b1b4-be3e9d98f2d5" />

---

**After a few sessions you'll have:**
- A Main Quest and side quests tracking what you're actually working on in life
- Named enemies: recurring negative patterns, limiting beliefs and energy drains
- A skills list ranking what you're developing, what's under-levelled, and what's becoming a signature strength
- Achievements and classes capturing genuine growth, meaningful milestones that your AI recognises and records
- A journal timeline linking entries to changes in your sheet

---

🔒 **Private by default.** A single `.html` file. No server, no accounts, no telemetry. Your data is a local file you own. Nothing leaves your device unless you choose to send it.

🤖 **Works with any AI.** Local models via [Ollama](https://ollama.com) (fully offline, free), or cloud models like Claude, ChatGPT, and Gemini. Prefer no AI? Edit fields directly in the app and export your data.

🚧 **Early work in progress.** All feedback welcome: [open an issue](https://github.com/sam-holmes2/character-sheet/issues), [start a discussion](https://github.com/sam-holmes2/character-sheet/discussions), or [find me on GitHub](https://github.com/sam-holmes2).

---

## Choose your path

| | **A. Local (Ollama)** | **B. Cloud AI** | **C. No AI** |
|---|---|---|---|
| **Privacy** | Fully offline. Nothing ever leaves your device | Your journal is sent to your AI provider's servers | Fully offline. You control everything |
| **Cost** | Free | Pay per use (Anthropic) or free tier | Free |
| **Setup** | ~10 minutes, one-time | ~5 minutes | Instant |
| **Quality** | Good (smaller models) | Best | N/A |

---

### Path A: Local AI with Ollama (recommended)

Everything runs on your own computer. No accounts, no subscriptions, no data ever leaving your device.

**1. Download the app**

Go to [`character-sheet.html`](character-sheet.html) on GitHub, click the download icon (top right). Open it in your browser.

**2. Install Ollama**

| OS | How |
|----|-----|
| **Mac** | `brew install ollama` or [download from ollama.com](https://ollama.com/download) |
| **Windows** | [Download the installer from ollama.com](https://ollama.com/download) and run it |
| **Linux** | `curl -fsSL https://ollama.com/install.sh \| sh` |

**3. Download a model**

Open a Terminal (Mac/Linux) or PowerShell (Windows) and run:

```
ollama pull gemma3:4b
```

`gemma3:4b` works on most computers (8 GB RAM, ~4 GB download). See the in-app Chat Settings for more options.

**Which model should I choose?**

Pick the largest model your RAM comfortably fits. As a starting point:

| Your RAM | Recommended model | Command |
|----------|-------------------|---------|
| 8 GB | `gemma3:4b` | `ollama pull gemma3:4b` |
| 16 GB | `qwen2.5:7b` | `ollama pull qwen2.5:7b` |
| 32 GB | `qwen2.5:14b` | `ollama pull qwen2.5:14b` |
| 64 GB+ | `qwen2.5:32b` | `ollama pull qwen2.5:32b` |

**Context window:** your character sheet data grows over time. A model's context window must fit your data plus the conversation. Export your JSON from the app (click `↓`), then check its size: a 50 KB file is roughly 12,000 tokens. Set the Context Window in Chat Settings to at least twice that. If your data is large, use a compact export or pick a model with a longer context.

**For a precise fit to your hardware:** [llmfit](https://github.com/AlexsJones/llmfit) detects your RAM, GPU, and speed, then scores every model. Mac/Linux: `brew install llmfit` then `llmfit fit`.

**4. Run Ollama with CORS enabled**

The browser needs permission to talk to Ollama. Stop any running Ollama instance first, then start it with the correct origin header.

**Mac (Terminal):**
```sh
pkill -f "Ollama.app/Contents/MacOS" 2>/dev/null; pkill -f "ollama serve" 2>/dev/null; sleep 1; OLLAMA_ORIGINS="*" ollama serve
```

**Linux (Terminal):**
```sh
pkill -f "ollama serve" 2>/dev/null; sleep 1; OLLAMA_ORIGINS="*" ollama serve
```

**Windows (PowerShell):**
```powershell
Stop-Process -Name ollama -Force -ErrorAction SilentlyContinue; Start-Sleep 1; $env:OLLAMA_ORIGINS="*"; ollama serve
```

Keep that terminal open while using chat. The app's Chat Settings screen shows the command for your OS.

**5. Open the app and start a session**

Open `character-sheet.html` in your browser. Click the chat icon (star, bottom bar), open Settings (gear icon), confirm your model is selected, and start talking.

---

### Troubleshooting Ollama

**Chat says "could not connect" or "Ollama not running"**

Ollama is either not started, or started without the CORS header the browser requires. Run the stop+start command for your OS from step 4 above, then try again.

To verify Ollama is running and reachable, open a new browser tab and go to `http://localhost:11434`. You should see `Ollama is running`.

**"Model not found" error**

The model listed in Chat Settings is not downloaded. Run `ollama pull <model-name>` in a terminal, then try again. The in-app error card shows the exact command.

**Ollama starts but the app still cannot connect**

You may have started Ollama without `OLLAMA_ORIGINS="*"`, or an old instance is still running in the background. Stop it fully with the kill command above, then restart.

Check what is listening on port 11434:

- Mac / Linux: `lsof -i :11434`
- Windows: `netstat -ano | findstr 11434`

**Checking Ollama logs**

Run with debug output to see what is happening:

- Mac / Linux: `OLLAMA_DEBUG=1 OLLAMA_ORIGINS="*" ollama serve`
- Windows: `$env:OLLAMA_DEBUG=1; $env:OLLAMA_ORIGINS="*"; ollama serve`

**Slow responses or out-of-memory errors**

The model is too large for your available RAM. Switch to a smaller model (e.g. `gemma3:4b`) in Chat Settings, or reduce the Context Window setting.

**Reinstalling Ollama**

If nothing works, uninstall and reinstall:

- Mac: drag Ollama out of Applications, then `rm -rf ~/.ollama` to remove all models, then reinstall from [ollama.com/download](https://ollama.com/download)
- Linux: `sudo systemctl stop ollama; sudo rm /usr/local/bin/ollama; rm -rf ~/.ollama`
- Windows: uninstall via Add/Remove Programs, then delete `%USERPROFILE%\.ollama`

---

### Path B: Cloud AI with an API key

Use the [live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html) (HTTPS) or your downloaded `character-sheet.html`.

> ⚠ **Privacy:** Your journal data is sent to Anthropic's servers with each chat message. They may store it according to their privacy policy. See [ai-privacy-guide.md](ai-privacy-guide.md) for the full picture. For sensitive journalling, use Path A instead.

1. Go to [console.anthropic.com](https://console.anthropic.com) and create an account (separate from Claude.ai)
2. Open **API Keys** and create a new key
3. **Store your API key in a password manager** (1Password, Bitwarden, Apple Passwords, etc.). You will need it again later and it cannot be retrieved from Anthropic after creation.
4. In the app: set a **security password** first (Security button, bottom bar), then open Chat Settings (gear icon in the chat panel), select a Claude model, and paste your key

> **Keep your API key private.** Anyone with it can use your Anthropic account and generate charges. Never paste it into websites you don't trust.

---

### Path B (copy-paste): Cloud AI without an API key

Use any AI, Claude, ChatGPT, Gemini, without an API key. Journal in the AI's web interface and paste the JSON back into the app.

1. **Download [`character-sheet.html`](character-sheet.html) and [`instructions.md`](instructions.md):** click each link, then the download icon (top right).
2. **Create (or open) your AI project:** e.g. [claude.ai](https://claude.ai) → New Project.
3. **Upload `instructions.md` to project knowledge:** Project sidebar → Add content → Add files. Replace the old version if updating.
4. **Paste the quickstart prompt** below and start talking.
5. **At the end of your session, ask:** `"Update my data.json based on our conversation."`
6. **Add `data.json` to project knowledge:** same as step 3. (If updating: remove the old version first, then upload the new one.)
7. **Import into the app:** open `character-sheet.html`, click `↑` (bottom right), paste the JSON, Import.

> Your journal data is sent to your provider with each message. Check their privacy settings if this concerns you.

---

### Path C: No AI

Download and open `character-sheet.html`. Click any field to edit it directly. Export your data regularly using the ↓ Export button.

You can also use any AI outside the app and paste the results back:

- **Export** your current data.json from the app
- Open a chat with any AI and paste in your data.json along with instructions.md
- At the end of your session, ask your AI to update your data.json
- **Import** the updated JSON back into the app

This gives you complete freedom over which AI (or no AI) you use, with no data sent anywhere automatically.

---

## Quickstart prompt (copy-paste workflow)

```
I'm setting up character-sheet, a gamified personal life dashboard. I've attached instructions.md which explains the data format.

Start by asking me what's going on in my life right now - what I'm working on, what's on my mind, what I'm trying to change. Keep it conversational, ask one thing at a time, and follow the thread. Never push me to share more than I want to.

Once you have a reasonable picture, generate my data.json using the format in instructions.md. We can fill in the gaps over time through regular sessions.
```

[OPTIONAL] Want to populate more of your sheet in one go? Try the **[Deep Dive](deep-dive.md)** - a structured interview covering all main fields. There are also copyable session starter prompts inside the Journal tab of the app itself.

[OPTIONAL] For richer session prompts, upload `journalling-prompts.md` to project knowledge alongside `instructions.md`. This powers **Guided** mode and other structured session types.

---

## Each session (copy-paste workflow)

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
| **Guided** | `"guided mode"` | Not sure where to start - AI leads with prompts |
| **Catch-up** | `"catch-up mode"` | Been a while - fast, broad sweep |
| **Debrief** | `"debrief mode"` | Review what's about to be written to JSON |

---

## XP and levelling

The AI controls all XP - and the main way to earn it is through journalling. Brain dump what's been happening, what you've worked through, what you've noticed about yourself, and the AI will reflect it back as progress on your sheet: updated quests, new skills, achievements unlocked, enemies named or defeated.

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
| **[ai-privacy-guide.md](ai-privacy-guide.md)** | Provider-by-provider privacy breakdown. |
| **[journalling-threat-model.md](journalling-threat-model.md)** | Privacy risk breakdown across all journalling approaches. |

---

## Roadmap
- **User onboarding** - Improved (less overwhelming) new user experience
- **Diagramming relationships** - between quests, skills, enemies, etc.
- **Skill trees** - structured skill progression with branching paths
- **Export to PDF** - a read-only view of your sheet
- **Quest dependencies** - unlock side quests when others complete
- **Themes / skins** - alternate visual styles beyond the default dark RPG look
- **Sync / backup** - optional encrypted export or cloud sync (without compromising local-first principles)

The immediate focus is getting the app in front of real users, collecting feedback, and fixing bugs. Feature requests and bug reports welcome - [open an issue](https://github.com/sam-holmes2/character-sheet/issues).

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

Your data stays on your device. The copy-paste JSON workflow is not just a technical mechanism: it is the privacy model. Nothing is transmitted automatically. You decide what leaves your machine and when.

- **`data.json` is your private diary.** Nothing leaves your machine unless you send it. Any AI provider you journal with (Claude, ChatGPT, etc.) may store, review, or use what you share for training. Check their privacy settings to opt out.
- **Think before syncing `data.json` to cloud storage.** Uploading to Google Drive, Dropbox, or iCloud means trusting that provider with your journal. `character-sheet.html` and `instructions.md` are fine to sync.
- **AI is optional.** The app works fully offline as a plain tracker. For stronger privacy with AI, use local models like [Ollama](https://ollama.com) (nothing leaves your device). See [ai-privacy-guide.md](ai-privacy-guide.md) for the full picture.
- **Keep your API key in a password manager.** If you use a cloud AI via the in-app chat, your API key grants access to your account. Store it in a password manager (1Password, Bitwarden, Apple Passwords, etc.), not in a document or email.
- **Use [Firefox](https://www.firefox.com/) if possible**, since it isolates each local HTML file's storage. In Chrome and Edge, all local files share the same origin, so a malicious local file you open could read your data.

**Password lock.** The app has an optional password that encrypts all your data in `localStorage` using AES-256-GCM with PBKDF2 key derivation (200,000 iterations). What it protects: someone who opens your browser and navigates to the app, or reads your browser's storage files directly. What it does not protect against: someone with full access to your device while the app is already unlocked, malware with access to browser memory, or your browser's developer tools while the tab is open. Think of it as a screen lock, not full-disk encryption.

**[Full journalling threat model](journalling-threat-model.md)** - a detailed breakdown of privacy risks across every journalling approach.

---

## Why I built this

> *"We are longing for an understanding of the universe around us when we barely understand the universe within our minds."* - Northlane

AI supercharged journalling and made self-reflection genuinely useful for me, but every conversation started mostly from scratch. The real insights lived in chat logs I'd never reread. I wanted somewhere to see that reflection clearly, own it, and build on it over time.

I'm a professional cyber security consultant with real concerns about trusting any company with deep personal data. character-sheet was inspired by [Obsidian.md](https://obsidian.md/) and the principle that users should own their knowledge on their own devices. The app is a single HTML file with no server, no telemetry, and no accounts - and if you want to go further, pair it with a local LLM like [Ollama](https://ollama.com) so no journal content ever leaves your machine.

If social media can use gamification to hold attention and keep people scrolling, I'd rather use powerful technology to help people understand and improve themselves.

Ultimately, I built this because I wanted it to exist. [LFM](CONTRIBUTING.md).

---

*Companion to [team-sheet](https://sam-holmes2.github.io/team-sheet/team-sheet.html), an IFS inner parts mapping app built on the same local-first, AI-optional architecture. If character-sheet is Skyrim where you are the main character, team-sheet is Animal Crossing for understanding and befriending your inner world.*

## Digital artists wanted!
If you're a designer who finds character-sheet useful and has ideas for a logo or visual identity, [I'd love to hear from you](https://github.com/sam-holmes2/character-sheet/issues).
