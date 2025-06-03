# SI-2025 Analog IC Daily Activity

## Day-2 

Date: 03 June 2025 (Tue)

- [Video](https://youtu.be/iuqNuaLUez4): Introduction to Xschem


**THEVENIN MODEL of MICROPHONE**

**Key specs** from the microphone [datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf) and research:
- Sensitivty: -44 dBV/Pa
- Condition: 94 dB SPL at 1 kHz which is sound pressure of 1 Pa
- Normal voice conversation is typically 60 dB SPL
- **Vth Calculation**
  - Voice (Pa) = $10^{(60-94)/20} = 19.9\times 10^{-3} Pa$
  - Output (Vpk) = $\sqrt{2}\times V_{rms} = \sqrt{2}\times 19.9\times 10^{-3} Pa \times 10^{-44/20} = 178 \mu Vpk$
  - **$V_{out-pk} = 0.178~ mV$**
- **Rth** (from datasheet) = 380 ohms


- [link to Sparkfun Schematic of the breakout board](https://cdn.sparkfun.com/assets/7/5/6/e/d/SparkFun_Analog_MEMS_Microphone_Breakout_SPH8878LR5H-1.pdf)
- From Sparkfun schematic: Rin=5k, Rfb=300k, therefore Gain = 60
- So output of the amplfier will be 60x0.178 mVpk = **10.68 mVpk**
- Sparkfun site states **100 mVpk** probaby assuming 10 times higher input signal i.e. Voice is **80 dB SPL**
- Input high-pass frequency = $1/2\pi RC = 1/2\pi 5k 4.7uF = 6.77 Hz$
- Feedback Low-pass filter frequency = $1/2\pi RC = 1/2\pi 300k 27pF = 19.6kHz $
- Input common-mode filter = $1/2\pi 10k 1uF = 15.9 Hz$


**Single-Pole Model of OPA 344**

- Specs from the [OP344 Datasheet](https://www.ti.com/lit/ds/symlink/opa344.pdf?ts=1747822666491&ref_url=https%253A%252F%252Fwww.google.com%252F):
  - Open Loop DC Gain: **120 dB** (From p-5 graph)
  - Unity Gain Frequency: **1 MHz**
- Pole = $1 MHz/10^6 = 1~Hz$

**Microphone AFE Analysis**

![Mic Analysis](content/figures/Fig-d2-1-mic-analysis.png)




## Day-1

Date: 02 June 2025 (Mon)

- [Video](https://youtu.be/baAFZwcFY-M): Introduction

**USB Microphone System**

![USB-MIDI Microphone System](figures/Fig-d1-1-USBmic.png)

- [Knowles MEMS capacitive microphone datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf)
- [OPA344 TI OpAmp datasheet](https://www.ti.com/lit/ds/symlink/opa345.pdf)
- [SparkFun Analog MEMS Microphone Breakout - SPH8878LR5H-1](https://www.sparkfun.com/sparkfun-analog-mems-microphone-breakout-sph8878lr5h-1.html)

**USB Microphone Teardown**

![USB Microphone Teardown](figures/Fig-d1-2-micTeardown.png)

**ASSIGNMENT**

- Find the _Thevenin equivalent_ circuit for the microphone for normal voice operation. 
  - A quick review of the topic can be found [here](https://mixignal-press.github.io/ebook-ice1/circuits.html#thevenin-and-norton-equivalent-circuits)
- Substitute the microphone's Thevenin's equivalent and find the _frequency response_ of the analog front-end (AFE).



