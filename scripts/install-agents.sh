#!/usr/bin/env bash
# Instaluje wybranych agentów z repo jarvis do ~/.claude/agents (macOS / Linux)
set -e
SRC="$(cd "$(dirname "$0")/.." && pwd)/.claude/agents"
DEST="${HOME}/.claude/agents"
mkdir -p "$DEST"
cp "$SRC"/*.md "$DEST"/
echo "Zainstalowano $(ls "$SRC"/*.md | wc -l) agentów do $DEST"
