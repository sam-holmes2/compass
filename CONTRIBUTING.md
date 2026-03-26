# Contributing to character-sheet

Thanks for taking an interest. This is a solo side project and contributions are welcome, but please read this first so we don't waste each other's time.

---

## What kind of contributions are welcome

- **Bug fixes** - especially anything that breaks data import/export, localStorage, or the Claude workflow
- **Accessibility improvements**
- **Browser compatibility fixes**
- **Documentation corrections**
- **New features discussed in an issue first** - see below

## What to check before opening a PR

- The whole app is a single HTML file with no build step. Keep it that way.
- Test in at least Chrome and Firefox, including Firefox's local-file isolation behaviour.
- No new dependencies. No npm. No bundlers.
- Keep `schema.md` in sync with any data model changes - Claude depends on it being accurate.


## For new features

Open an issue before writing code. New features need to stay coherent with the overall design - local-first, privacy-respecting, no backend, RPG-flavoured. If the idea doesn't fit that, a PR is unlikely to be merged no matter how well it's built.

## Opening an issue

Use [GitHub Issues](https://github.com/sam-holmes2/character-sheet/issues). For bugs, include:
- Browser and OS
- What you did, what you expected, what actually happened
- Any console errors

For feature requests, explain the problem you're trying to solve, not just the solution you have in mind.

## Code style

Match the existing style - vanilla JS, no classes for logic, terse variable names, CSS variables for theming. If you're unsure, just be consistent with whatever is around the code you're touching.

## Licence

By submitting a PR you agree that your contribution will be licensed under the same licence as the project (MIT).
