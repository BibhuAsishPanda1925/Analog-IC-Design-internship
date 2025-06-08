Title: Measuring Rise time, fall time and delay in a circuit

.PARAM vdd_val=5
.CSPARAM cs_vdd_val=vdd_val

** RC network
R1	vin	vout	1k
C1	vout 	GND 	1p

** Stimuli
** PULSE(V1 V2 TD TR TF PW PER)
Vsin	vin	GND	0  pulse(0 vdd_val 1n 1p 1p 10n 20n)

.MEAS TRAN rise_time TRIG v(vout) VAL='0.1*vdd_val' RISE=1 TARG v(vout) VAL='0.9*vdd_val' RISE=1
.MEAS TRAN t_rise_in WHEN v(vin)='0.5*vdd_val' RISE=1
.MEAS TRAN t_rise_out WHEN v(vout)='0.5*vdd_val' RISE=1
.MEAS TRAN delay PARAM='t_rise_out - t_rise_in'


.CONTROL
  save all
  OP
  TRAN 10p 40n 
  *
  LET vout10 = 0.1*cs_vdd_val
  LET vout90 = 0.9*cs_vdd_val
  MEAS TRAN fall_time TRIG v(vout) VAL=vout90 FALL=1 TARG v(vout) VAL=vout10 FALL=1
   
.ENDC 

.GLOBAL GND
.END
