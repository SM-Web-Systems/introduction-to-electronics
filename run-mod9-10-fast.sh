#!/usr/bin/env bash
set -uo pipefail
export DL_TRIES=12 DL_WAIT=20   # 4-min window per artefact (media is rate-limited; retry later)
GEN="/Users/douglasbailey/.claude/skills/lms-factory/scripts/generate.sh"; SITE="/Users/douglasbailey/my-dev/electronics-course/intro-electronics-lms"; F="text,video,infographic,slides,quiz,flashcards,mindmap"
run(){ local dir="$1" title="$2" q="$3"
  echo "----- $dir start $(date) -----"
  bash "$GEN" "$SITE/$dir" "Introduction to Electronics: $title" "$F" "$SITE/$dir/source.md" "research:$q"
  echo "----- $dir done $(date) -----"
}
echo "=== fast pass modules 9-10 started $(date) ==="
run module-9-sensors "Sensors & Actuators Overview" "Beginner electronics sensors and actuators: how sensors convert physical quantities to electrical signals, motors and relays, introduction to PWM"
run module-10-project "Putting It Together" "Beginner electronics capstone: building an LED flasher or simple alarm circuit, debugging a broken circuit, bridging to Arduino microcontroller"
echo "=== fast pass modules 9-10 finished $(date) ==="
