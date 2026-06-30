#!/usr/bin/env bash
# Resume pass: regenerate ONLY the heavy media (video, infographic, slides) for
# Modules 7-10, which were blocked by Google's daily media quota. Run this AFTER the
# quota resets (1-24h). Resumable: skips any media already present. The text/quiz/
# flashcards/mind-map artefacts already exist and are left untouched.
set -uo pipefail
GEN="/Users/douglasbailey/.claude/skills/lms-factory/scripts/generate.sh"; SITE="/Users/douglasbailey/my-dev/electronics-course/intro-electronics-lms"
export DL_TRIES=90 DL_WAIT=20   # 30-min window — real video renders take >15 min
MEDIA="text,video,infographic,slides"   # text is skip-exists; media is the target
run(){ local dir="$1" title="$2"
  echo "----- $dir media resume $(date) -----"
  bash "$GEN" "$SITE/$dir" "Introduction to Electronics: $title" "$MEDIA" "$SITE/$dir/source.md"
}
echo "=== media resume started $(date) ==="
run module-7-circuits  "Basic Circuit Applications"
run module-8-signals   "Signals & Logic"
run module-9-sensors   "Sensors & Actuators Overview"
run module-10-project  "Putting It Together"
echo "=== media resume finished $(date) ==="
# quick quota probe so the log shows if it's still capped:
notebooklm generate infographic -n "$(grep -o '"notebook_id": *"[^"]*"' "$SITE/module-7-circuits/.artifacts.json"|head -1|cut -d'"' -f4)" 2>&1 | grep -i "rate limited" && echo "NOTE: quota STILL active — rerun later." || true
