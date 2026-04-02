# character-sheet

**Turn your journal into a living dashboard for your life.**

*The real value of character-sheet is the character you build away from it.*

**[Try the live demo](https://sam-holmes2.github.io/character-sheet/character-sheet.html)** — no download needed.

> ⚠️ Early work in progress — all feedback welcome. Open an issue or contact Sam directly.

> **Designed for desktop.** Mobile will open but layout is not optimised. Mobile support is on the roadmap.

---

## Privacy

Everything stays on your machine. Nothing is sent anywhere unless you paste it into Claude.

- What you share with Claude is processed by Anthropic — [read their data retention policy](https://privacy.claude.com/en/articles/10023548-how-long-do-you-store-my-data). Turn off **"Help improve Claude"** in Claude settings (Profile > Privacy) to opt out of training data.
- Don't use this on a shared computer.
- Firefox is the safest browser — see [Security](#security).

---

## Setup

You need: a free [Claude account](https://claude.ai) and the two files below.

1. **Download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html) and [`instructions.md`](https://github.com/sam-holmes2/character-sheet/blob/master/instructions.md)** — click each link, then the download icon (top right).
2. **Create a Claude Project** — go to [claude.ai](https://claude.ai), click New Project.
3. **Add `instructions.md` to project knowledge** — in the project sidebar, click **Add content → Add files**.
4. **Paste the quickstart prompt** into the project and start talking.
5. **At the end of your first chat, ask Claude:** `"Generate my data.json based on our conversation and instructions.md."`
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

Want to populate more of your sheet in one go? Try the **[Deep Dive](deep-dive.md)** — a structured interview covering all main fields.

---

## Each session

1. **Start a new chat** in your Claude project. Claude already has your context from project knowledge.
2. **Journal** — brain dump freely.
3. **End the session** — ask Claude: *"Update my data.json based on this chat."*
4. **Replace `data.json` in project knowledge** — remove the old version, upload the new one.
5. **Sync the app** — open `character-sheet.html`, click `↑`, paste the JSON, Import.

You can also edit fields directly in the app and use `↓` Export to get updated JSON to paste back to Claude.

---

## Keeping up to date

1. **Export first** — click `↓` (bottom right) and copy the JSON.
2. **Re-download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html)**.
3. **Clear old localStorage**:
   - **Firefox:** `about:preferences#privacy` → Manage Data → search for the file name → Remove
   - **Chrome:** Open the old file → DevTools (F12) → Application → Local Storage → right-click → Clear
   - **Quickest:** open browser console (F12 → Console) and run `localStorage.clear()`, then refresh
4. **Re-import your data** — open the new file, click `↑`, paste JSON.
5. **Re-download [`instructions.md`](https://github.com/sam-holmes2/character-sheet/blob/master/instructions.md)** and replace it in your Claude project knowledge.

---

## Keeping token usage low

- **Start a new chat each session.** Most important. Every message in a conversation re-sends the entire history — costs compound fast.
- **Use project knowledge.** `instructions.md` and `data.json` load once at the start, not per message.
- **Keep `data.json` concise.** It loads every session. Push back if Claude makes it verbose.
- **One topic per session.** Focused sessions produce leaner JSON updates.

---

## What does and doesn't persist

| What | Where | Survives browser restart? | Survives clearing browser data? | Claude knows? |
|------|-------|--------------------------|--------------------------------|--------------|
| Everything imported via `↑` | localStorage | ✅ | ❌ | Yes |
| Edits made in the app | localStorage | ✅ | ❌ | **Only if you export `↓`** |
| Practice timer / checkbox / number | localStorage | ✅ | ❌ | No |
| Practice history (graphs) | localStorage | ✅ | ❌ | No |
| Status sliders | localStorage | ✅ | ❌ | No |
| XP log | localStorage | ✅ | ❌ | No |
| Completed quests | localStorage | ✅ | ❌ | **Only when newly completed in a session** |
| `data.json` | Project knowledge | ✅ | ✅ | Yes |

**localStorage is not session storage** — it survives closing and reopening the browser. Risks are: clearing browser data, switching browser, opening the file from a different path, or a new device.

**The safe habit:** end every session by asking Claude to update your data.json, replace it in project knowledge, and import the new version. That way Claude and the app always match.

---

## Tabs at a glance

| Tab | What it shows |
|-----|---------------|
| **Combat** | Practice trackers, daily distribution, XP log, Claude's read. |
| **Balance** | The four elements — Air / Fire / Water / Earth — scored and detailed. |
| **Quests** | Main quest, side quests with progress, completed quests. |
| **Skills** | Underlevelled vs signature strengths. |
| **Enemies** | Active patterns, limiting beliefs, compulsions, distortions. |
| **Inventory** | Allies and flow sources. |
| **Achievements** | Milestones and character classes. |
| **Journal** | Chronological journal with chapters and entries. |

See [wiki.md](wiki.md) for a detailed breakdown of each tab.

---

## XP and levelling

Claude controls all XP. You can negotiate — made a breakthrough? Call it out. Think something was undervalued? Push back. It's a conversation, not a vending machine.

---

## Files in this repo

| File | What it is |
|------|------------|
| **[character-sheet.html](character-sheet.html)** | The app. Open in your browser. |
| **[instructions.md](instructions.md)** | Upload to Claude project knowledge. Stays permanently attached. |
| **[deep-dive.md](deep-dive.md)** | Alternative starting prompt — structured interview for a fuller first session. |
| **[journalling-prompts.md](journalling-prompts.md)** | Optional. Upload to project knowledge for deeper session prompts. |
| **[wiki.md](wiki.md)** | Full documentation for each tab. |
| **[steve-example-data.json](steve-example-data.json)** | Demo data. Not needed once you import your own. |

---

## Security

**Use [Firefox](https://www.firefox.com/) if possible.** In Chrome and Edge, all local HTML files share the same storage origin — any other local HTML file you open could technically read your data. Firefox gives each local file its own isolated origin.

If you prefer Chrome, run from a local server: `python3 -m http.server` in the same folder, then open `localhost:8000/character-sheet.html`.

**Cloud storage:** keeping `character-sheet.html` in Dropbox, Google Drive, or iCloud is fine — the file has no personal data. Your data lives in localStorage and Claude project knowledge.

---

## Offline use

You can use `character-sheet.html` as a plain RPG-style life tracker without Claude entirely — no accounts, no internet, no data shared.

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

I'm a professional cyber security consultant with real concerns about trusting any company with deep personal data. character-sheet was inspired by [Obsidian.md](https://obsidian.md/) and the principle that users should own their knowledge on their own devices where possible.

If social media can use gamification to hold attention and keep people scrolling, I'd rather use the same tools to help people understand and improve themselves.

Ultimately, I built this because I wanted it to exist. [LFM](CONTRIBUTING.md)
