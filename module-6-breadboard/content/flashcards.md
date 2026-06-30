# Breadboard Flashcards

## Card 1

**Q:** What is the primary purpose of a **solderless** breadboard in electronics?

**A:** To build and test circuit prototypes without making permanent connections.

---

## Card 2

**Q:** The long vertical columns on the outer edges of a breadboard are called _____.

**A:** Power rails

---

## Card 3

**Q:** How are the pins within a single **power rail** column connected internally?

**A:** They are connected vertically in one continuous strip.

---

## Card 4

**Q:** Term: Terminal Strip

**A:** Definition: A short horizontal row of pins connected internally used to mount components.

---

## Card 5

**Q:** How many pins are typically electrically linked in one standard **terminal strip**?

**A:** Five

---

## Card 6

**Q:** What is the internal electrical orientation of a **terminal strip** relative to the power rails?

**A:** Horizontal (perpendicular to the rails).

---

## Card 7

**Q:** The physical trench that divides the breadboard into two main halves is known as the _____.

**A:** Center gap

---

## Card 8

**Q:** What is the primary purpose of the **center gap** on a breadboard?

**A:** To allow Integrated Circuits (ICs) to be placed without shorting their opposite pins.

---

## Card 9

**Q:** How must an **Integrated Circuit (IC)** be oriented on a breadboard to function correctly?

**A:** It must straddle the center gap.

---

## Card 10

**Q:** In breadboard labeling, what do the **numbers** ($1, 2, 3$, etc.) typically identify?

**A:** Specific horizontal rows of terminal strips.

---

## Card 11

**Q:** In breadboard labeling, what do the **letters** ($a$ through $j$) typically identify?

**A:** Specific vertical columns within the terminal strips.

---

## Card 12

**Q:** What does a **red line** printed next to a power rail usually indicate?

**A:** Positive polarity ($+$).

---

## Card 13

**Q:** What does a **blue or black line** printed next to a power rail usually indicate?

**A:** Negative polarity or Ground ($-$).

---

## Card 14

**Q:** Under what condition are two components in the same horizontal row **not** connected?

**A:** When they are on opposite sides of the center gap.

---

## Card 15

**Q:** What mechanism inside the breadboard holes holds component leads in place?

**A:** Metal spring clips

---

## Card 16

**Q:** A "short circuit" on a breadboard occurs when power is connected directly to _____ without a load.

**A:** Ground ($GND$)

---

## Card 17

**Q:** What is a common result of a "one hole off" wiring mistake?

**A:** An open circuit (the electrical path is not completed).

---

## Card 18

**Q:** How can a user provide power to both the left and right power rails of a breadboard?

**A:** By using jumper wires to bridge the matching rails together.

---

## Card 19

**Q:** Concept: Continuity

**A:** Definition: An uninterrupted electrical path between two points on the breadboard.

---

## Card 20

**Q:** What is the standard pin spacing (pitch) for most solderless breadboards?

**A:** $0.1$ inches (or $2.54$ mm).

---

## Card 21

**Q:** Why should you avoid using wires that are too thick for the breadboard holes?

**A:** They can permanently stretch or damage the internal spring clips.

---

## Card 22

**Q:** When using an **Arduino**, which breadboard section is best for distributing $5V$ and $GND$?

**A:** The power rails.

---

## Card 23

**Q:** What is the first step in troubleshooting a circuit that is not behaving as expected?

**A:** Visually trace the wiring against the circuit schematic.

---

## Card 24

**Q:** What is the risk of placing both leads of a resistor into the same 5-pin terminal strip?

**A:** The resistor will be shorted out (current will bypass it).

---

## Card 25

**Q:** How can you tell if a long power rail is electrically split in the middle?

**A:** Look for a break or gap in the colored polarity lines on the board surface.

---

## Card 26

**Q:** What does it mean to "bridge" two rows on a breadboard?

**A:** To use a wire or component to create an electrical connection between them.

---

## Card 27

**Q:** Which tool is most effective for verifying if a specific breadboard hole is receiving voltage?

**A:** A multimeter.

---

## Card 28

**Q:** Cloze: Terminal strips are typically separated into two banks of _____ columns each.

**A:** Five

---

## Card 29

**Q:** Why is it important to keep jumper wires flat and flush to the breadboard surface?

**A:** It prevents accidental disconnections and makes the circuit easier to read.

---

## Card 30

**Q:** A component lead that is inserted into a hole but not touching the internal clip is called a _____ connection.

**A:** Loose

---

## Card 31

**Q:** In the context of breadboarding, what is a "bus"?

**A:** A common connection point used by multiple components (like a power rail).

---

## Card 32

**Q:** What happens to the internal connection of row 5 when it reaches the center gap?

**A:** The connection is broken (the gap acts as an insulator).

---

## Card 33

**Q:** When connecting an LED, why must the leads be in two different terminal rows?

**A:** To ensure current flows through the LED rather than around it.

---

## Card 34

**Q:** How do you identify a "bridge error" during visual inspection?

**A:** Look for stray wire strands or component leads touching adjacent rows.

---

## Card 35

**Q:** Why are breadboard rows labeled with numbers and letters?

**A:** To provide a coordinate system for mapping circuits accurately.

---

## Card 36

**Q:** If you plug a wire into $1a$ and another into $1e$, are they connected?

**A:** Yes.

---

## Card 37

**Q:** If you plug a wire into $1a$ and another into $1f$, are they connected?

**A:** No (separated by the center gap).

---

## Card 38

**Q:** If you plug a wire into $1a$ and another into $2a$, are they connected?

**A:** No (different terminal rows).

---

## Card 39

**Q:** What does the abbreviation **DIP** stand for in breadboard-compatible chips?

**A:** Dual In-line Package.

---

## Card 40

**Q:** How does color-coding wires assist in the building process?

**A:** It helps distinguish between power, ground, and signal paths.

---

## Card 41

**Q:** What is the consequence of reversing the connections on a power rail (putting $GND$ on the red rail)?

**A:** Components with polarity (like LEDs or ICs) may be damaged or fail to work.

---

## Card 42

**Q:** How can you confirm a "loose wire" mistake without tools?

**A:** Gently tug on each wire to ensure it is gripped by the internal spring clip.

---

## Card 43

**Q:** To create a circuit path from an Arduino to a breadboard, you use _____ wires.

**A:** Jumper

---

## Card 44

**Q:** Under what circumstance should a component cross a power rail?

**A:** Generally never; rails are for distribution, not component mounting.

---

## Card 45

**Q:** What is the vertical range of a standard power rail connection?

**A:** The entire length of the breadboard (unless there is a physical split).

---

## Card 46

**Q:** Cloze: Solderless breadboards are ideal for _____ because parts can be reused indefinitely.

**A:** Prototyping

---

## Card 47

**Q:** What does "probing" a circuit involve?

**A:** Using multimeter leads to check voltages at specific breadboard holes.

---

## Card 48

**Q:** When building, why is it useful to connect the two ground rails (blue lines) together?

**A:** To establish a common ground ($GND$) reference across the entire board.

---

## Card 49

**Q:** How do you physically remove a component from a solderless breadboard?

**A:** By pulling it straight up and out of the holes.

---

## Card 50

**Q:** What design feature of the breadboard ensures that the two rows of an IC are not connected to each other?

**A:** The center gap (trench).

---

## Card 51

**Q:** If a circuit works intermittently when you touch it, what is the likely cause?

**A:** A loose connection or a poorly seated component lead.

---

## Card 52

**Q:** Term: Jumper Wire

**A:** Definition: A short, solid-core wire used to connect two points on a breadboard.

---

## Card 53

**Q:** What is the orientation of the internal metal strips in the **terminal strip** area?

**A:** Horizontal.

---

## Card 54

**Q:** What is the orientation of the internal metal strips in the **power rail** area?

**A:** Vertical.

---

## Card 55

**Q:** Why is it standard practice to power off the Arduino before changing wires on a breadboard?

**A:** To prevent accidental short circuits during the wiring process.

---
