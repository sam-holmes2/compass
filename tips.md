# Tips

## Mobile workflow

The app is fully mobile-friendly. The main friction point is getting JSON from your AI into the app — inline JSON in chat is hard to select and copy on mobile.

**The fix:** ask your AI to write the update as a file rather than pasting it into chat.

> *"Write my updated data.json as a downloadable file."*

Claude (and most other AIs) will attach a `data.json` file to the message. Tap to download it, then:

1. Open `character-sheet.html` in your mobile browser (saved to Files, or the GitHub Pages demo)
2. Tap `↑` (bottom right) to open the import modal
3. Tap **↑ data.json** (bottom right of the modal) and select the downloaded file
4. Tap Apply

If your AI doesn't support file attachments, the next best option is to ask it to output a short **partial update** (see below) — less JSON to select and copy.

---

## Keeping token usage low

- **Start a new chat each session.** Most important. Every message in a conversation re-sends the entire history — costs compound fast.
- **Use project knowledge.** `instructions.md` and `data.json` load once at the start, not per message.
- **Use partial updates.** Instead of asking for a full `data.json`, ask: *"Give me a partial update for what changed."* The AI will output only the fields that changed — much smaller and cheaper to generate. See [Partial updates](#partial-updates) below.
- **Keep `data.json` concise.** It loads every session. Push back if the AI makes it verbose.
- **One topic per session.** Focused sessions produce leaner JSON updates.

---

## Partial updates

A partial update is a smaller JSON that contains only the top-level fields that changed, rather than the full `data.json`. The app merges it into your existing data.

**When to use it:** any session where only a few things changed — XP, a quest or two, a status read. No need to re-output skills, allies, enemies, and everything else that didn't move.

**How to request one:** ask the AI: *"Give me a partial update JSON for what changed this session."*

**What the AI outputs** (example):
```json
{
  "_partial": true,
  "_instructionsVersion": "1.4.0",
  "xp": 520,
  "sessionCount": 12,
  "lastSession": "2026-04-10",
  "health": 72,
  "mana": 68,
  "healthAvg": 65,
  "manaAvg": 63,
  "sideQuests": [...]
}
```

**How to import it:** exactly the same as a full update — click `↑`, paste, Import. The app detects the `"_partial": true` flag and merges rather than replaces.

**What gets merged vs replaced:** partial updates do a shallow merge at the top level. If you include `"sideQuests"`, the entire `sideQuests` array is replaced. If you omit it, it stays untouched. The same applies to any other top-level key.

**The diff toast** shows "Partial update" as the first item so you can confirm what changed before the modal closes.

---

## What does and doesn't persist

| What | Where | Survives browser restart? | Survives clearing browser data? | AI knows? |
|------|-------|--------------------------|--------------------------------|-----------|
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

**The safe habit:** end every session by asking the AI to update your `data.json`, replace it in project knowledge, and import the new version. That way the AI and the app always match.

---

## Updating to a new version

1. **Export first** — click `↓` (bottom right). Use **Full Migration Backup** to download `migration.json`. This preserves practice history, status history, and XP log.
2. **Re-download [`character-sheet.html`](https://github.com/sam-holmes2/character-sheet/blob/master/character-sheet.html)**.
3. **Clear old localStorage:**
   - **Firefox:** `about:preferences#privacy` → Manage Data → search for the file name → Remove
   - **Chrome:** Open the old file → DevTools (F12) → Application → Local Storage → right-click → Clear
   - **Quickest:** open browser console (F12 → Console) and run `localStorage.clear()`, then refresh
4. **Re-import your data** — open the new file, click `↑`, paste your `data.json`. (`migration.json` is not for the import modal — it's a backup only.)
5. **Re-download [`instructions.md`](https://github.com/sam-holmes2/character-sheet/blob/master/instructions.md)** and replace it in your AI project knowledge.
