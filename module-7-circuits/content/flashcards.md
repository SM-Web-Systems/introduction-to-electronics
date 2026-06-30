# Electronics Flashcards

## Card 1

**Q:** What is the primary function of a voltage divider circuit?

**A:** To reduce a higher voltage to a specific lower voltage level.

---

## Card 2

**Q:** In a basic voltage divider, how are the two resistors electrically connected to each other?

**A:** The two resistors are connected in series.

---

## Card 3

**Q:** Formula: The output voltage ($V_{out}$) of a two-resistor voltage divider

**A:** $V_{out} = V_{in} \cdot \frac{R_2}{R_1 + R_2}$

---

## Card 4

**Q:** Where is the output voltage ($V_{out}$) typically measured in a standard voltage divider diagram?

**A:** The node between the two resistors.

---

## Card 5

**Q:** If $R_1$ and $R_2$ are equal in a voltage divider, what is the output voltage relative to the input?

**A:** The output voltage is exactly half of the input voltage.

---

## Card 6

**Q:** In the voltage divider formula, what does $R_2$ represent?

**A:** The resistor connected between the output node and ground.

---

## Card 7

**Q:** How does increasing the resistance of $R_1$ affect the output voltage ($V_{out}$)?

**A:** It causes the output voltage to decrease.

---

## Card 8

**Q:** How does increasing the resistance of $R_2$ affect the output voltage ($V_{out}$)?

**A:** It causes the output voltage to increase.

---

## Card 9

**Q:** Why is a voltage divider unsuitable for powering high-current devices like motors?

**A:** The output voltage drops significantly when a heavy load is attached.

---

## Card 10

**Q:** What term describes a digital input pin that is not connected to a definite high or low voltage?

**A:** Floating pin

---

## Card 11

**Q:** Why are floating pins problematic for microcontrollers like the Arduino?

**A:** They pick up electrical noise and cause unpredictable logic state fluctuations.

---

## Card 12

**Q:** What is the purpose of a pull-up resistor?

**A:** To ensure an input pin stays at a logic high state when no other signal is present.

---

## Card 13

**Q:** What is the purpose of a pull-down resistor?

**A:** To ensure an input pin stays at a logic low state when no other signal is present.

---

## Card 14

**Q:** Where is a pull-up resistor connected relative to the input pin?

**A:** Between the input pin and the positive supply voltage ($V_{CC}$).

---

## Card 15

**Q:** Where is a pull-down resistor connected relative to the input pin?

**A:** Between the input pin and the ground ($GND$).

---

## Card 16

**Q:** If a button is used with a pull-up resistor, what is the pin's logic state when the button is NOT pressed?

**A:** Logic HIGH ($5V$ or $3.3V$).

---

## Card 17

**Q:** If a button is used with a pull-down resistor, what is the pin's logic state when the button is NOT pressed?

**A:** Logic LOW ($0V$).

---

## Card 18

**Q:** When a button is pressed in a pull-up configuration, it typically connects the input pin to _____.

**A:** Ground ($GND$)

---

## Card 19

**Q:** When a button is pressed in a pull-down configuration, it typically connects the input pin to _____.

**A:** The positive supply voltage ($V_{CC}$)

---

## Card 20

**Q:** Why is a resistor used for pull-ups instead of a direct wire to $V_{CC}$?

**A:** To prevent a short circuit when the button is pressed to ground.

---

## Card 21

**Q:** Arduino boards often include internal resistors that can be enabled via code called _____.

**A:** Internal pull-up resistors

---

## Card 22

**Q:** What two components are required to create a basic RC circuit?

**A:** A resistor and a capacitor.

---

## Card 23

**Q:** What is the primary application of RC circuits in digital electronics?

**A:** Creating time delays or filtering signals.

---

## Card 24

**Q:** Concept: RC Time Constant

**A:** Definition: The time required to charge a capacitor to approximately $63\%$ of its full value through a resistor.

---

## Card 25

**Q:** What Greek letter is commonly used to represent the RC time constant?

**A:** $\tau$ (Tau)

---

## Card 26

**Q:** Formula: The RC time constant ($\tau$)

**A:** $\tau = R \cdot C$

---

## Card 27

**Q:** What is the unit of measurement for the RC time constant?

**A:** Seconds ($s$)

---

## Card 28

**Q:** How does increasing the resistance in an RC circuit affect the charging time?

**A:** It increases the charging time.

---

## Card 29

**Q:** How does increasing the capacitance in an RC circuit affect the charging time?

**A:** It increases the charging time.

---

## Card 30

**Q:** Approximately how many time constants ($n\tau$) are required for a capacitor to be considered fully charged?

**A:** Five time constants ($5\tau$).

---

## Card 31

**Q:** The curve representing the voltage across a capacitor in an RC circuit is _____.

**A:** Exponential

---

## Card 32

**Q:** Term: Capacitor

**A:** Definition: An electronic component that stores energy in an electric field.

---

## Card 33

**Q:** What unit is used to measure capacitance?

**A:** Farads ($F$)

---

## Card 34

**Q:** Why is a current-limiting resistor required for an LED?

**A:** To prevent excessive current from burning out the LED.

---

## Card 35

**Q:** Concept: Forward Voltage ($V_f$)

**A:** Definition: The amount of voltage an LED consumes to turn on and operate.

---

## Card 36

**Q:** What determines the Forward Voltage ($V_f$) of an LED?

**A:** The material and color of the LED.

---

## Card 37

**Q:** Formula: Calculating the value of an LED current-limiting resistor ($R$)

**A:** $R = \frac{V_{source} - V_{forward}}{I}$

---

## Card 38

**Q:** In the LED resistor formula, what does $I$ represent?

**A:** The desired forward current for the LED.

---

## Card 39

**Q:** If the source voltage increases, how must the current-limiting resistor change to keep the LED safe?

**A:** The resistance value must increase.

---

## Card 40

**Q:** What is a typical safe current ($I$) for a standard $5mm$ LED used with an Arduino?

**A:** Approximately $20\text{ mA}$ ($0.02\text{ A}$).

---

## Card 41

**Q:** What happens to LED brightness if the current-limiting resistor value is increased?

**A:** The brightness decreases.

---

## Card 42

**Q:** The longer lead of a standard LED identifies the _____.

**A:** Anode (positive side)

---

## Card 43

**Q:** The shorter lead or flat side of an LED identifies the _____.

**A:** Cathode (negative side)

---

## Card 44

**Q:** In an LED circuit, where should the current-limiting resistor be placed?

**A:** In series with the LED, on either the anode or cathode side.

---

## Card 45

**Q:** What fundamental law of physics is used to calculate the resistor values for LEDs and voltage dividers?

**A:** Ohm's Law

---

## Card 46

**Q:** Formula: Ohm's Law

**A:** $V = I \cdot R$

---

## Card 47

**Q:** What unit is used to measure electrical resistance?

**A:** Ohms ($\Omega$)

---

## Card 48

**Q:** What unit is used to measure electrical current?

**A:** Amperes ($A$)

---

## Card 49

**Q:** What unit is used to measure electrical potential difference?

**A:** Volts ($V$)

---

## Card 50

**Q:** Why must current ($I$) be converted to Amperes when using the LED resistor formula?

**A:** To ensure the resulting resistance value is correctly calculated in Ohms.

---

## Card 51

**Q:** If an LED has a $V_f$ of $2V$ and is powered by a $5V$ source, what is the voltage across the resistor?

**A:** $3V$

---

## Card 52

**Q:** What physical phenomenon occurs if too much current passes through a resistor or LED?

**A:** Heat generation leading to component failure.

---

## Card 53

**Q:** Which Arduino pin type is most likely to require a pull-up or pull-down resistor?

**A:** Digital Input pin

---

## Card 54

**Q:** In a voltage divider used as a sensor, $R_2$ is often replaced by a _____.

**A:** Variable resistor (like a photoresistor or thermistor)

---

## Card 55

**Q:** What is the logic state of an Arduino pin connected to a pull-up resistor when the circuit is closed to ground?

**A:** Logic LOW

---

## Card 56

**Q:** What is the logic state of an Arduino pin connected to a pull-down resistor when the circuit is closed to $V_{CC}$?

**A:** Logic HIGH

---

## Card 57

**Q:** If an RC circuit has $R = 10k\Omega$ and $C = 100\mu F$, what is the time constant $\tau$?

**A:** $1$ second

---

## Card 58

**Q:** What happens to the time constant if the capacitance is halved?

**A:** The time constant is halved.

---

## Card 59

**Q:** The process of removing 'noise' from a mechanical button press using an RC circuit is called _____.

**A:** Debouncing

---

## Card 60

**Q:** Why is the resistor in an LED circuit called a 'current-limiting' resistor?

**A:** It provides resistance to restrict the flow of charge to a safe level.

---
