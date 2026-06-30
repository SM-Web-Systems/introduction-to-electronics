#!/usr/bin/env bash
set -uo pipefail
SITE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GEN=~/.claude/skills/lms-factory/scripts/generate.sh
FORMATS="text,audio,video,infographic,slides,quiz,flashcards,mindmap"
declare -a MODS=(
  "module-1-safety|Introduction to Electronics: Safety & Fundamentals|Electrical safety basics, shock and fire hazards, lab tool handling, reading component datasheets for beginners"
  "module-2-core|Introduction to Electronics: Core Concepts|Ohm's law voltage current resistance, electrical power, AC vs DC, series and parallel circuits for beginners"
  "module-3-components|Introduction to Electronics: Essential Components|Resistors capacitors diodes LEDs transistors inductors basics, colour codes and tolerances for beginners"
)
echo "=== generation started $(date) ==="
for entry in "${MODS[@]}"; do
  IFS='|' read -r dir title query <<< "$entry"
  echo "----- $dir -----"
  bash "$GEN" "$SITE/$dir" "$title" "$FORMATS" "$SITE/$dir/source.md" "research:$query"
done
echo "=== generation finished $(date) ==="
