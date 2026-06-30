# Electronics Flashcards

## Card 1

**Q:** What electrical property describes the potential difference provided by a battery?

**A:** Voltage

---

## Card 2

**Q:** What is the standard unit of measurement for voltage?

**A:** Volts ($V$)

---

## Card 3

**Q:** The total amount of energy a battery can store is referred to as its _____.

**A:** Capacity

---

## Card 4

**Q:** What is the most common unit used to measure battery capacity in small electronics?

**A:** Milliampere-hours ($\text{mAh}$)

---

## Card 5

**Q:** In the unit $\text{mAh}$, what does the 'm' represent?

**A:** Milli ($10^{-3}$)

---

## Card 6

**Q:** In the unit $\text{mAh}$, what does 'Ah' stand for?

**A:** Ampere-hour

---

## Card 7

**Q:** How many milliampere-hours ($\text{mAh}$) are equal to $1$ ampere-hour ($Ah$)?

**A:** $1000 \text{ mAh}$

---

## Card 8

**Q:** What battery characteristic determines how long a device can run before needing a recharge?

**A:** Capacity

---

## Card 9

**Q:** Before connecting a bench power supply to a circuit, which setting should be verified first?

**A:** Output voltage

---

## Card 10

**Q:** What color is standard for the positive ($+$) terminal on a bench power supply?

**A:** Red

---

## Card 11

**Q:** What color is standard for the negative ($-$) or ground terminal on a bench power supply?

**A:** Black

---

## Card 12

**Q:** Why is it dangerous to connect a power supply with the wrong polarity?

**A:** It can permanently damage sensitive electronic components.

---

## Card 13

**Q:** What component is designed to maintain a constant output voltage regardless of changes in input voltage?

**A:** Voltage regulator

---

## Card 14

**Q:** In electronics, what does the term 'rail' refer to?

**A:** A dedicated wire or path that carries a specific regulated voltage.

---

## Card 15

**Q:** What is the primary regulated voltage rail required by most standard Arduino boards for logic?

**A:** The $5V$ rail

---

## Card 16

**Q:** What secondary regulated voltage rail is often provided by Arduino for modern sensors?

**A:** The $3.3V$ rail

---

## Card 17

**Q:** What happens to the output of a voltage regulator if the input battery voltage drops slightly (but stays above the threshold)?

**A:** The output voltage remains constant at its rated level.

---

## Card 18

**Q:** Why do Arduino peripherals like sensors often require a specific regulated rail?

**A:** They are designed to operate at precise voltage levels to function correctly.

---

## Card 19

**Q:** What is the risk of supplying an Arduino $5V$ pin with $12V$ directly?

**A:** It will likely destroy the microcontroller due to overvoltage.

---

## Card 20

**Q:** Concept: Regulated Power Supply

**A:** Definition: A power source that provides a stable, fixed voltage output despite fluctuations in load or input.

---

## Card 21

**Q:** Which battery specification is usually printed as a numerical value followed by the letter '$V$'?

**A:** Nominal Voltage

---

## Card 22

**Q:** When using a bench power supply, what is the 'Ground' terminal's typical potential relative to the positive terminal?

**A:** $0V$

---

## Card 23

**Q:** What is the primary purpose of using a bench power supply during the prototyping phase?

**A:** To provide a reliable and adjustable power source for testing circuits safely.

---

## Card 24

**Q:** Why is capacity ($\text{mAh}$) just as important as voltage when choosing a battery for a mobile robot?

**A:** It dictates the total operating time of the robot.

---

## Card 25

**Q:** Term: $3.3V$ Rail

**A:** Definition: A power line providing $3.3$ volts, commonly used for low-power microchips and sensors.

---

## Card 26

**Q:** Term: $5V$ Rail

**A:** Definition: The standard power line for Arduino logic and common digital components.

---

## Card 27

**Q:** How does a voltage regulator handle an input voltage that is higher than its rated output?

**A:** It reduces and stabilizes the voltage to the specific target level.

---

## Card 28

**Q:** What is the first step in safely powering down a circuit connected to a bench power supply?

**A:** Turn off the power supply output before disconnecting the wires.

---

## Card 29

**Q:** In battery terms, what does a rating of $2000 \text{ mAh}$ imply about current draw over one hour?

**A:** The battery can theoretically provide $2000 \text{ mA}$ of current for one hour.

---

## Card 30

**Q:** If a circuit requires $5V$ but you only have a $9V$ battery, what component must be used?

**A:** A voltage regulator

---

## Card 31

**Q:** What is the main advantage of a regulated rail over an unregulated battery connection for an Arduino?

**A:** It protects the board from the decreasing voltage of a discharging battery.

---

## Card 32

**Q:** What is the significance of the $3.3V$ rail in modern electronics compared to older $5V$ systems?

**A:** It is used for more energy-efficient and sensitive components.

---

## Card 33

**Q:** When connecting power to a breadboard, why is it standard practice to use the red and blue/black side rails?

**A:** To provide a consistent power and ground distribution across the entire board.

---

## Card 34

**Q:** What safety precaution prevents a bench power supply from overheating a shorted circuit?

**A:** Setting a current limit (if the supply allows).

---

## Card 35

**Q:** What unit represents the flow of electricity, which is used to calculate capacity over time?

**A:** Amperes ($A$)

---

## Card 36

**Q:** Why must you ensure the 'common ground' is connected when using multiple power sources?

**A:** To establish a uniform reference point for all voltage levels in the circuit.

---

## Card 37

**Q:** The ability of a battery to deliver $1 \text{ mA}$ for $500$ hours suggests a capacity of _____.

**A:** $500 \text{ mAh}$

---

## Card 38

**Q:** Which power component is likely to fail if the input polarity is reversed on an Arduino?

**A:** The onboard voltage regulator

---

## Card 39

**Q:** What is the purpose of the 'current' knob on a bench power supply?

**A:** To limit the maximum amount of current the supply will deliver to the circuit.

---

## Card 40

**Q:** What characterizes the 'nominal voltage' of a battery?

**A:** The average voltage the battery maintains during its discharge cycle.

---

## Card 41

**Q:** Why are $3.3V$ peripherals often incompatible with $5V$ logic signals without protection?

**A:** The higher $5V$ signal can exceed the voltage tolerance of the $3.3V$ component.

---

## Card 42

**Q:** In the context of Arduino, what are 'peripherals'?

**A:** External components like sensors, displays, and motors connected to the board.

---

## Card 43

**Q:** A battery with $1 \text{ Ah}$ capacity can provide $100 \text{ mA}$ for how many hours?

**A:** $10$ hours

---

## Card 44

**Q:** What is the result of connecting two batteries in series regarding the total voltage?

**A:** The total voltage is the sum of the individual battery voltages.

---

## Card 45

**Q:** What visual indicator on a bench power supply confirms that the output is currently active?

**A:** The 'Output' or 'On' LED indicator.

---

## Card 46

**Q:** How does a voltage regulator protect an Arduino from 'noise' in the power supply?

**A:** It filters out small voltage spikes and dips to provide a clean signal.

---

## Card 47

**Q:** Which rail is typically used for the USB communication chips on many Arduino boards?

**A:** The $5V$ rail

---

## Card 48

**Q:** What is the relationship between the 'V' and 'GND' pins on an Arduino board?

**A:** They represent the positive supply and the return path (ground) for current.

---

## Card 49

**Q:** Why should you never leave a LiPo battery unattended while charging for an Arduino project?

**A:** They are chemically sensitive and can pose a fire risk if they fail.

---

## Card 50

**Q:** What is the most important rule when using a bench power supply for the first time?

**A:** Always double-check the voltage setting before connecting the leads to your project.

---
