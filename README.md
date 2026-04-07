# character-sheet

**Turn your journal into a living dashboard for your life.**

*The real value of character-sheet is the character you build away from it.*

**[Try the live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** — no download needed.

> ⚠️ Early work in progress — all feedback welcome. Open an issue or contact Sam directly.

> **Designed for desktop.** Mobile will open but layout is not optimised. Mobile support is on the roadmap.

---

## Privacy

Everything stays on your machine. Nothing is sent anywhere unless you paste it into an AI.

- What you share with your AI is subject to that provider's data retention policy. Check their privacy settings to opt out of training data use if that matters to you.
- Don't use this on a shared computer.
- Firefox is the safest browser — see [Security](#security).

---

## Setup

You need: an AI that supports persistent project context (such as Claude Projects) and the two files below.

1. **Download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html) and [`instructions.md`](https://github.com/sam-holmes2/character-sheet/blob/master/instructions.md)** — click each link, then the download icon (top right).
2. **Create an AI project** — for example, go to [claude.ai](https://claude.ai) and click New Project.
3. **Add `instructions.md` to project knowledge** — in the project sidebar, click **Add content → Add files**.
4. **Paste the quickstart prompt** into the project and start talking.
5. **At the end of your first chat, ask the AI:** `"Generate my data.json based on our conversation and instructions.md."`
6. **Add `data.json` to project knowledge** — same as you added `instructions.md`.
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
2. **Journal** — brain dump freely.
3. **End the session** — ask the AI: *"Update my data.json based on this chat."*
4. **Replace `data.json` in project knowledge** — remove the old version, upload the new one.
5. **Sync the app** — open `character-sheet.html`, click `↑`, paste the JSON, Import.

You can also edit fields directly in the app and use `↓` Export to get updated JSON to paste back to your AI.

---

## Keeping up to date

1. **Export first** — click `↓` (bottom right) and copy the JSON.
2. **Re-download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html)**.
3. **Clear old localStorage**:
   - **Firefox:** `about:preferences#privacy` → Manage Data → search for the file name → Remove
   - **Chrome:** Open the old file → DevTools (F12) → Application → Local Storage → right-click → Clear
   - **Quickest:** open browser console (F12 → Console) and run `localStorage.clear()`, then refresh
4. **Re-import your data** — open the new file, click `↑`, paste JSON.
5. **Re-download [`instructions.md`](https://github.com/sam-holmes2/character-sheet/blob/master/instructions.md)** and replace it in your AI project knowledge.

---

## Keeping token usage low

- **Start a new chat each session.** Most important. Every message in a conversation re-sends the entire history — costs compound fast.
- **Use project knowledge.** `instructions.md` and `data.json` load once at the start, not per message.
- **Keep `data.json` concise.** It loads every session. Push back if the AI makes it verbose.
- **One topic per session.** Focused sessions produce leaner JSON updates.

---

## What does and doesn't persist

| What | Where | Survives browser restart? | Survives clearing browser data? | AI knows? |
|------|-------|--------------------------|--------------------------------|--------------|
| Everything imported via `↑` | localStorage | ✅ | ❌ | Yes |
| Edits made in the app | localStorage | ✅ | ❌ | **Only if you export `↓`** |
| Practice timer / checkbox / number | localStorage | ✅ | ❌ | No |
| Practice history (graphs) | localStorage | ✅ | ❌ | No |
| Status sliders | localStorage | ✅ | ❌ | No |
| Core skills sliders | localStorage | ✅ | ❌ | No |
| XP log | localStorage | ✅ | ❌ | No |
| Completed quests | localStorage | ✅ | ❌ | **Only when newly completed in a session** |
| `data.json` | Project knowledge | ✅ | ✅ | Yes |

**localStorage is not session storage** — it survives closing and reopening the browser. Risks are: clearing browser data, switching browser, opening the file from a different path, or a new device.

**The safe habit:** end every session by asking the AI to update your data.json, replace it in project knowledge, and import the new version. That way the AI and the app always match.

---

## Tabs at a glance

| Tab | What it shows |
|-----|---------------|
| **Combat** | Status check-in (Focus / Energy / Interest / Purpose) and recurring practice trackers. |
| **Balance** | The four elements — Air / Fire / Water / Earth — scored, detailed, and charted over time. |
| **Quests** | Main quest, side quests with progress, completed quests. |
| **Skills** | Core skills radar, keystone skill, all skills ranked by priority, XP history. |
| **Enemies** | Active patterns, limiting beliefs, compulsions, distortions, and the graveyard. |
| **Allies** | Everything working for you — loot, spells, liberating beliefs, and flow sources. |
| **Achievements** | Titles (insights, deeds, transmutations, surrenders) and character classes. |
| **Journal** | Progression timeline, last session read, session starters, and chapter entries. |

See [wiki.md](wiki.md) for a detailed breakdown of each tab.

---

## XP and levelling

The AI controls all XP. You can negotiate — made a breakthrough? Call it out. Think something was undervalued? Push back. It's a conversation, not a vending machine.

---

## Files in this repo

| File | What it is |
|------|------------|
| **[character-sheet.html](character-sheet.html)** | The app. Open in your browser. |
| **[instructions.md](instructions.md)** | Upload to your AI project knowledge. Stays permanently attached. |
| **[deep-dive.md](deep-dive.md)** | Alternative starting prompt — structured interview for a fuller first session. |
| **[journalling-prompts.md](journalling-prompts.md)** | Optional. Upload to project knowledge for deeper session prompts. |
| **[wiki.md](wiki.md)** | Full documentation for each tab. |
| **[steve-example-data.json](steve-example-data.json)** | Demo data. Not needed once you import your own. |

---

## Security

**Use [Firefox](https://www.firefox.com/) if possible.** In Chrome and Edge, all local HTML files share the same storage origin — any other local HTML file you open could technically read your data. Firefox gives each local file its own isolated origin.

If you prefer Chrome, run from a local server: `python3 -m http.server` in the same folder, then open `localhost:8000/character-sheet.html`.

**Cloud storage:** keeping `character-sheet.html` in Dropbox, Google Drive, or iCloud is fine — the file has no personal data. Your data lives in localStorage and your AI project knowledge.

---

## Offline use

You can use `character-sheet.html` as a plain RPG-style life tracker without any AI — no accounts, no internet, no data shared.

---

## Roadmap

- Mobile support
- Recurring quests
- Health and mana bars
- General polish

Have a feature request or found a bug? Open an issue.

---

## Why I built this

> *"We are longing for an understanding of the universe around us when we barely understand the universe within our minds."* — Northlane

AI made journalling and self-reflection genuinely useful for me, but every conversation started mostly from scratch. The real insights lived in chat logs I'd never reread. I wanted somewhere to see that reflection clearly, own it, and build on it over time.

character-sheet works with any AI that supports persistent project context — Claude, GPT-4, Gemini, or similar.

I'm a professional cyber security consultant with real concerns about trusting any company with deep personal data. character-sheet was inspired by [Obsidian.md](https://obsidian.md/) and the principle that users should own their knowledge on their own devices where possible.

If social media can use gamification to hold attention and keep people scrolling, I'd rather use the same tools to help people understand and improve themselves.

Ultimately, I built this because I wanted it to exist. [LFM](CONTRIBUTING.md)
