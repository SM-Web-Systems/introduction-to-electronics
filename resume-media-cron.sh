#!/usr/bin/env bash
# LaunchAgent wrapper for the media resume pass. Fires on a schedule (see the plist),
# keeps the Mac awake for the run, and self-disables once all Module 7-10 media exist.
# Runs locally so it has the NotebookLM CLI + file-based auth.
set -uo pipefail

SITE="/Users/douglasbailey/my-dev/electronics-course/intro-electronics-lms"
LOG="$SITE/resume-media.log"
DONE="$SITE/.media-resume-done"
PLIST="$HOME/Library/LaunchAgents/com.tvai.lms-resume-media.plist"
# LaunchAgents get a minimal PATH — add the framework bin that has `notebooklm`.
export PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:/usr/local/bin:/usr/bin:/bin"

echo "=== wrapper fired $(date) ===" >> "$LOG"

# Already finished? no-op.
[ -f "$DONE" ] && { echo "already done — exiting" >> "$LOG"; exit 0; }

# Quota probe: if media is still rate-limited, leave quietly and let the next firing retry.
NB=$(grep -o '"notebook_id": *"[^"]*"' "$SITE/module-7-circuits/.artifacts.json" | head -1 | cut -d'"' -f4)
if notebooklm generate infographic -n "$NB" 2>&1 | grep -qi "rate limited"; then
  echo "quota still active $(date) — will retry next firing" >> "$LOG"
  exit 0
fi

# Quota is open — run the resume pass, kept awake for the duration.
echo "quota open — running resume-media.sh $(date)" >> "$LOG"
caffeinate -dimsu bash "$SITE/resume-media.sh" >> "$LOG" 2>&1

# Count any still-missing media across Modules 7-10.
missing=0
for m in module-7-circuits module-8-signals module-9-sensors module-10-project; do
  for f in explainer-video.mp4 infographic.png slides.pptx; do
    [ -s "$SITE/$m/content/$f" ] || missing=$((missing+1))
  done
done
echo "missing media after run: $missing $(date)" >> "$LOG"

# All present -> mark done and self-disable the LaunchAgent.
if [ "$missing" -eq 0 ]; then
  touch "$DONE"
  echo "ALL MEDIA COMPLETE — disabling LaunchAgent" >> "$LOG"
  launchctl unload "$PLIST" 2>/dev/null || true
fi
