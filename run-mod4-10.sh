#!/usr/bin/env bash
set -uo pipefail
GEN="/Users/douglasbailey/.claude/skills/lms-factory/scripts/generate.sh"; SITE="/Users/douglasbailey/my-dev/electronics-course/intro-electronics-lms"; F="text,video,infographic,slides,quiz,flashcards,mindmap"
run(){ local dir="$1" title="$2" q="$3"
  echo "----- $dir start $(date) -----"
  bash "$GEN" "$SITE/$dir" "Introduction to Electronics: $title" "$F" "$SITE/$dir/source.md" "research:$q"
  echo "----- $dir done $(date) -----"
}
echo "=== modules 4-10 started $(date) ==="
run module-4-measurement "Measurement & Test Equipment" "Beginner electronics measurement: using a digital multimeter for voltage current resistance continuity, reading schematics, introduction to the oscilloscope"
run module-5-power "Power Supplies" "Beginner electronics power supplies: battery types voltage capacity, bench power supply, voltage regulators 5V and 3.3V for Arduino"
run module-6-breadboard "Breadboarding" "Beginner electronics breadboarding: how a solderless breadboard works internally, building simple circuits, common wiring mistakes"
run module-7-circuits "Basic Circuit Applications" "Beginner electronics circuits: voltage dividers, pull-up and pull-down resistors, RC timing, LED current limiting resistor calculation"
run module-8-signals "Signals & Logic" "Beginner electronics signals and logic: analogue vs digital signals, logic levels 5V vs 3.3V, binary numbers, switch debouncing"
run module-9-sensors "Sensors & Actuators Overview" "Beginner electronics sensors and actuators: how sensors convert physical quantities to electrical signals, motors and relays, introduction to PWM"
run module-10-project "Putting It Together" "Beginner electronics capstone: building an LED flasher or simple alarm circuit, debugging a broken circuit, bridging to Arduino microcontroller"
echo "=== modules 4-10 finished $(date) ==="
