# Threat Model: character-sheet

_Last reviewed: 2026-05-26_

This document covers residual security risks that cannot be fully eliminated by the app — risks the user should be aware of.

---

## 1. Cloud AI provider receives your journal data

**When it applies:** Whenever you use an Anthropic (Claude) or OpenAI model in the in-app chat.

**What is sent:** A compact summary of your character sheet — name, quests, skills, enemies, allies, recent session summaries, and your conversation messages. This goes to the provider's servers and is subject to their privacy policy: [Anthropic](https://www.anthropic.com/privacy) | [OpenAI](https://openai.com/policies/privacy-policy).

**How to avoid it:** Use a local Ollama model instead. Ollama runs entirely on your device and sends nothing to any server. The app prompts you to acknowledge this before opening cloud chat for the first time, and shows a persistent warning banner while a cloud model is active.

---

## 2. GitHub receives your encrypted backup

**When it applies:** When you use the Sync feature to push a backup to GitHub.

**What is sent:** An AES-256-GCM encrypted blob. Your plaintext data and your password never leave your device — only the ciphertext is transmitted.

**Risk:** GitHub (and anyone who gains access to your repo) holds the encrypted blob. It cannot be read without your password. Use a fine-grained GitHub Personal Access Token scoped only to the backup repository.

---

## 3. Other local HTML files can read unencrypted data

**When it applies:** When no security password is set and you open another HTML file from your local filesystem.

**What it means:** When the app runs as a `file://` page, all local HTML files share the same storage namespace. A malicious local file (e.g. something downloaded and opened) could read your character sheet data and API key from storage.

**How to eliminate it:** Set a security password in Settings. This encrypts everything in storage — no other local file can read it without the password.

---

## 4. Content Security Policy is not enforced locally

**When it applies:** When running the app as a local `file://` page (which is the normal use case).

**What it means:** The CSP header in the file restricts outbound connections to only the expected endpoints (Anthropic, OpenAI, GitHub, Ollama, GitHub raw content). Browsers enforce this policy when the app is served over HTTPS (e.g. the demo site), but not for `file://` pages. Locally, the enforcement comes from the app's own code rather than the browser's CSP.

**Practical impact:** Low. The app makes no outbound calls except the ones described in risks 1 and 2 above, and only when you explicitly trigger them.

---

## 5. Unlock PIN is persisted in sessionStorage for reload convenience

**When it applies:** When you have a security password set and reload the page within the same browser tab.

**What it means:** To avoid requiring you to re-enter your password on every reload, the app stores your PIN in `sessionStorage` when you unlock. `sessionStorage` is scoped to the current browser tab and cleared when the tab is closed. Another page open in the same tab (which cannot normally occur without navigating away and losing the app) could in theory read it.

**Practical impact:** Low in normal use. The PIN in `sessionStorage` is the same secret as the one you type, and it is cleared when the tab closes. It is not written to disk in plaintext. To eliminate it entirely, close the tab rather than reloading when you want to ensure the PIN is not held anywhere.

---

## 6. Ollama CORS wildcard while running

**When it applies:** When you run Ollama with `OLLAMA_ORIGINS="*"` as instructed for local chat.

**What it means:** While Ollama is running with that flag, any webpage open in your browser (including other tabs) can send requests to `http://localhost:11434` and interact with your locally running model. This is an accepted limitation of the browser security model for `localhost` services.

**How to reduce exposure:** Close the terminal running Ollama when you are done with your session. This stops the service and ends the exposure window. Do not leave Ollama running persistently in the background if you visit untrusted websites in the same browser session.
