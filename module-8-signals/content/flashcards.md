# Electronics Flashcards

## Card 1

**Q:** Which type of signal is characterized by values that vary continuously over time?

**A:** Analogue signal

---

## Card 2

**Q:** A signal that represents data using discrete, non-continuous steps is known as a(n) _____ signal.

**A:** digital

---

## Card 3

**Q:** How many possible values exist within a given range of a truly analogue signal?

**A:** An infinite number of values.

---

## Card 4

**Q:** In digital electronics, the two distinct states of a signal are typically referred to as _____ and _____.

**A:** HIGH; LOW

---

## Card 5

**Q:** What is a common physical example of an analogue signal found in nature?

**A:** Sound waves (or light intensity).

---

## Card 6

**Q:** Term: Logic Level

**A:** Definition: The specific voltage range used to represent a binary $1$ or $0$ in a digital circuit.

---

## Card 7

**Q:** In a $5V$ logic system, what logic state is represented by a voltage near $5V$?

**A:** Logic HIGH

---

## Card 8

**Q:** In a $3.3V$ logic system, what logic state is represented by a voltage near $0V$?

**A:** Logic LOW

---

## Card 9

**Q:** The binary digit $1$ is used to numerically represent which logic state?

**A:** Logic HIGH

---

## Card 10

**Q:** The binary digit $0$ is used to numerically represent which logic state?

**A:** Logic LOW

---

## Card 11

**Q:** What potential risk is involved when connecting a $5V$ logic output to a $3.3V$ logic input?

**A:** The higher voltage may damage the $3.3V$ component.

---

## Card 12

**Q:** The Arduino Uno and similar classic boards primarily operate using _____ logic.

**A:** $5V$

---

## Card 13

**Q:** Modern low-power microcontrollers, such as the ESP32, typically utilize _____ logic.

**A:** $3.3V$

---

## Card 14

**Q:** What is the mathematical base of the binary number system?

**A:** Base-$2$

---

## Card 15

**Q:** Term: Bit

**A:** Definition: The smallest unit of digital information, representing either a $0$ or a $1$.

---

## Card 16

**Q:** How many unique states can be represented by a single bit?

**A:** Two states ($0$ and $1$).

---

## Card 17

**Q:** In binary counting, what value follows $01$?

**A:** $10$

---

## Card 18

**Q:** What decimal value is equivalent to the binary number $101$?

**A:** $5$

---

## Card 19

**Q:** In a binary number, the place value of each position is a power of _____.

**A:** $2$

---

## Card 20

**Q:** What is the place value (in decimal) of the rightmost bit in a binary number?

**A:** $1$ (calculated as $2^0$).

---

## Card 21

**Q:** What is the minimum number of bits required to represent the decimal value $4$?

**A:** $3$ bits (binary $100$).

---

## Card 22

**Q:** How is the decimal number $3$ represented in binary?

**A:** $11$

---

## Card 23

**Q:** How is the decimal number $7$ represented in binary?

**A:** $111$

---

## Card 24

**Q:** What phenomenon causes a mechanical switch to rapidly open and close several times when pressed?

**A:** Contact bounce (or bouncing).

---

## Card 25

**Q:** Why must an Arduino programmer implement 'debouncing' for mechanical switches?

**A:** To ensure a single physical press is not registered as multiple input triggers.

---

## Card 26

**Q:** Contact bounce is primarily caused by the _____ properties of the metal contacts within a switch.

**A:** mechanical (or elastic)

---

## Card 27

**Q:** What are the two general methods used to debounce a switch signal?

**A:** Hardware debouncing and software debouncing.

---

## Card 28

**Q:** In software debouncing, what technique is used to ignore rapid, spurious state changes?

**A:** Implementing a short time delay.

---

## Card 29

**Q:** Which electronic component is commonly used in hardware debouncing to smooth voltage spikes?

**A:** A capacitor.

---

## Card 30

**Q:** What is the purpose of a pull-up or pull-down resistor on a digital input pin?

**A:** To ensure the pin stays in a known state (HIGH or LOW) when the switch is open.

---

## Card 31

**Q:** A digital input pin that is not connected to either HIGH or LOW is said to be _____.

**A:** floating

---

## Card 32

**Q:** Why are 'floating' pins problematic for microcontrollers?

**A:** They pick up electrical noise, causing the input to fluctuate unpredictably between states.

---

## Card 33

**Q:** In binary, what is the value of the third position from the right (the 'fours' place) in terms of powers of two?

**A:** $2^2$

---

## Card 34

**Q:** What logic state is typically associated with the Boolean value 'True'?

**A:** HIGH

---

## Card 35

**Q:** What logic state is typically associated with the Boolean value 'False'?

**A:** LOW

---

## Card 36

**Q:** Term: Analogue-to-Digital Converter (ADC)

**A:** Definition: A system that converts a continuous analogue voltage into a discrete binary number.

---

## Card 37

**Q:** What is the decimal equivalent of the binary number $1000$?

**A:** $8$

---

## Card 38

**Q:** How is the decimal value $10$ expressed in binary?

**A:** $1010$

---

## Card 39

**Q:** The rightmost bit in a binary sequence is called the _____ Significant Bit.

**A:** Least

---

## Card 40

**Q:** The leftmost bit in a multi-bit binary number is called the _____ Significant Bit.

**A:** Most

---

## Card 41

**Q:** How many total unique combinations can be represented by a $3$-bit binary number?

**A:** $8$ (calculated as $2^3$).

---

## Card 42

**Q:** What is the maximum decimal value that can be represented using exactly $4$ bits?

**A:** $15$ (binary $1111$).

---

## Card 43

**Q:** In the context of electronics power, GND stands for _____.

**A:** Ground

---

## Card 44

**Q:** What voltage is the standard reference for logic Ground?

**A:** $0V$

---

## Card 45

**Q:** How does a digital signal's resistance to noise compare to that of an analogue signal?

**A:** Digital signals are generally more resistant because they only need to distinguish between two broad voltage ranges.

---

## Card 46

**Q:** What binary value immediately follows $111$?

**A:** $1000$

---

## Card 47

**Q:** In software debouncing, the code checks if the switch signal remains _____ for a specified duration before acting.

**A:** stable

---

## Card 48

**Q:** Hardware debouncing circuits often combine a capacitor with a(n) _____.

**A:** resistor

---

## Card 49

**Q:** What device is required to safely connect a $5V$ sensor to a $3.3V$ microcontroller input?

**A:** A logic level shifter (or level converter).

---

## Card 50

**Q:** Term: Mechanical Switch

**A:** Definition: A physical component that creates a make-or-break connection in an electric circuit.

---

## Card 51

**Q:** In binary, the decimal value $2$ is written as _____.

**A:** $10$

---

## Card 52

**Q:** What is the decimal result of $2^4$?

**A:** $16$

---

## Card 53

**Q:** Concept: Binary Counting

**A:** The process of incrementing values using only digits $0$ and $1$, where reaching $2$ triggers a carry to the next column.

---

## Card 54

**Q:** A signal that alternates between exactly $0V$ and $5V$ to send a message is an example of _____ communication.

**A:** digital

---

## Card 55

**Q:** Which logic state corresponds to a 'closed' switch in a circuit using a pull-down resistor?

**A:** HIGH

---

## Card 56

**Q:** Which logic state corresponds to an 'open' switch in a circuit using a pull-up resistor?

**A:** HIGH

---

## Card 57

**Q:** What is the decimal value of the binary number $110$?

**A:** $6$

---

## Card 58

**Q:** What binary number represents the decimal value $9$?

**A:** $1001$

---

## Card 59

**Q:** In a $3.3V$ logic system, a voltage of $3.1V$ would typically be interpreted as _____.

**A:** HIGH (Logic $1$)

---

## Card 60

**Q:** The binary number $1111$ is equal to which decimal number?

**A:** $15$

---

## Card 61

**Q:** If a digital signal is 'Logic $0$', what is its approximate voltage in a $5V$ system?

**A:** $0V$

---

## Card 62

**Q:** How many bits are in the binary number $101010$?

**A:** $6$ bits.

---

## Card 63

**Q:** Digital signals use discrete steps to represent data, whereas analogue signals represent data as a _____ wave.

**A:** continuous

---

## Card 64

**Q:** What is the decimal value of the binary digit in the $2^3$ position?

**A:** $8$

---

## Card 65

**Q:** Why is it important for a $16$-year-old beginner to understand logic levels before building with Arduino?

**A:** To prevent hardware damage and ensure sensors communicate correctly with the board.

---

## Card 66

**Q:** The binary representation of decimal $0$ is _____.

**A:** $0$

---

## Card 67

**Q:** What is the binary representation of decimal $1$?

**A:** $1$

---

## Card 68

**Q:** Does a digital signal provide a 'perfect' representation of an analogue sound wave?

**A:** No, it provides a discrete approximation (sampling).

---

## Card 69

**Q:** In binary, what happens to the bits when you double a decimal value (e.g., from $2$ to $4$)?

**A:** The bits shift one position to the left (e.g., $10$ becomes $100$).

---

## Card 70

**Q:** What is the primary function of a switch in an electronics project?

**A:** To act as a control input by completing or breaking a circuit.

---
