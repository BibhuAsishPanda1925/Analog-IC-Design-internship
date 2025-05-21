# Worksheet

# Thevenin Model of Microphone

**Key specs** from the microphone [datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf) and research:
- Sensitivty: -44 dBV/Pa
- Condition: 94 dB SPL at 1 kHz which is sound pressure of 1 Pa
- Normal voice conversation is typically 60 dB SPL

**Vth Calculation**

- Voice (Pa) = $10^{(60-94)/20} = 19.9\times 10^{-3} Pa$
- Output (Vpk) = $\sqrt{2}\times V_{rms} = \sqrt{2}\times 19.9\times 10^{-3} Pa \times 10^{-44/20} = 178 \mu Vpk$
- **$V_{out-pk} = 0.178~ mV$**

**Rth** (from datasheet) = 380 ohms
