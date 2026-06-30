#!/usr/bin/env bash
set -uo pipefail
GEN="/Users/douglasbailey/.claude/skills/lms-factory/scripts/generate.sh"; SITE="/Users/douglasbailey/my-dev/electronics-course/intro-electronics-lms"; FORMATS="text,video,infographic,slides,quiz,flashcards,mindmap"
echo "=== modules 2+3 started $(date) ==="
bash "$GEN" "$SITE/module-2-core" "Introduction to Electronics: Core Concepts" "$FORMATS"   "$SITE/module-2-core/source.md"   "research:Electronics core concepts for beginners: Ohm's law voltage current resistance, electrical power and energy, AC vs DC, series and parallel circuits"
echo "----- module 2 done $(date) -----"
bash "$GEN" "$SITE/module-3-components" "Introduction to Electronics: Essential Components" "$FORMATS"   "$SITE/module-3-components/source.md"   "research:Electronics essential components for beginners: resistors colour codes and tolerances, capacitors, diodes and LEDs, transistors NPN PNP as switches, inductors and magnetism"
echo "=== modules 2+3 finished $(date) ==="
