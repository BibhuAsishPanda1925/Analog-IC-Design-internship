# Worksheet

## Thevenin Model of Microphone

**Key specs** from the microphone [datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf) and research:
- Sensitivty: -44 dBV/Pa
- Condition: 94 dB SPL at 1 kHz which is sound pressure of 1 Pa
- Normal voice conversation is typically 60 dB SPL
- **Vth Calculation**
  - Voice (Pa) = $10^{(60-94)/20} = 19.9\times 10^{-3} Pa$
  - Output (Vpk) = $\sqrt{2}\times V_{rms} = \sqrt{2}\times 19.9\times 10^{-3} Pa \times 10^{-44/20} = 178 \mu Vpk$
  - **$V_{out-pk} = 0.178~ mV$**
- **Rth** (from datasheet) = 380 ohms

## Analysis of sparkfun schematic

- [link to Sparkfun Schematic of the breakout board](https://cdn.sparkfun.com/assets/7/5/6/e/d/SparkFun_Analog_MEMS_Microphone_Breakout_SPH8878LR5H-1.pdf)
- From Sparkfun schematic: Rin=5k, Rfb=300k, therefore Gain = 60
- So output of the amplfier will be 60x0.178 mVpk = **10.68 mVpk**
- Sparkfun site states **100 mVpk** probaby assuming 10 times higher input signal i.e. Voice is **80 dB SPL**
- Input high-pass frequency = $1/2\pi RC = 1/2\pi 5k 4.7uF = 6.77 Hz$
- Feedback Low-pass filter frequency = $1/2\pi RC = 1/2\pi 300k 27pF = 19.6kHz $
- Input common-mode filter = $1/2\pi 10k 1uF = 15.9 Hz$

## ADC input analysis

- Typical input voltage range for Arduino nano are:
  - Vcc (3.3V/5V)
  - Internal Ref (1.1V) : This cannot be used with Vcc/2 common-mode
  - Extrenal Ref
- Typical resolution is 10-bit
- If we go with 3.3V the effective resolution will be:
  - We will calculate with peak-to-peak output voltage from the mic.
  - Total steps = 20mV/LSB = 20mV/3.3V/1024 = < 3 bits !!
