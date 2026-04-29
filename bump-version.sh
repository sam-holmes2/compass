#!/usr/bin/env bash
# bump-version.sh — update the version string in all three places atomically.
# Usage: ./bump-version.sh 1.5.0
set -euo pipefail

NEW="$1"
if [[ -z "$NEW" ]]; then
  echo "Usage: $0 <new-version>  (e.g. $0 1.5.0)" >&2
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HTML="$SCRIPT_DIR/character-sheet.html"
INST="$SCRIPT_DIR/instructions.md"

# ── 1. instructions.md header ─────────────────────────────────────────────────
# Matches: # character-sheet — LLM Instructions v1.4.0
sed -i '' "s/\(# character-sheet — LLM Instructions v\)[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*/\1${NEW}/" "$INST"

# ── 2. instructions.md body (the hardcoded value Claude stamps into JSON) ──────
# Matches: "_instructionsVersion": "1.4.0"
sed -i '' "s/\"_instructionsVersion\": \"[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\"/\"_instructionsVersion\": \"${NEW}\"/g" "$INST"

# ── 3. character-sheet.html constant ──────────────────────────────────────────
# Matches: const INSTRUCTIONS_VERSION = '1.4.0';
sed -i '' "s/\(const INSTRUCTIONS_VERSION = '\)[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\(';\)/\1${NEW}\2/" "$HTML"

# ── 4. Compute SHA-256 of instructions.md and embed in HTML ───────────────────
# Matches: const INSTRUCTIONS_MD_SHA256 = 'abc123...';
HASH=$(shasum -a 256 "$INST" | awk '{print $1}')
sed -i '' "s/\(const INSTRUCTIONS_MD_SHA256 = '\)[^']*\(';\)/\1${HASH}\2/" "$HTML"

# ── verify ─────────────────────────────────────────────────────────────────────
echo "Version bumped to $NEW in:"
grep -n "LLM Instructions v"                  "$INST"
grep -n '"_instructionsVersion"'              "$INST"
grep -n "const INSTRUCTIONS_VERSION"         "$HTML"
grep -n "const INSTRUCTIONS_MD_SHA256"       "$HTML"
