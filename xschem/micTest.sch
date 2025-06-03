v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -40 -10 -40 30 {lab=GND}
N -40 -110 -40 -70 {lab=vnmic}
N -40 -110 50 -110 {lab=vnmic}
N 110 -110 180 -110 {lab=vn1}
N 240 -110 290 -110 {lab=vn2}
N 410 -110 490 -110 {lab=virt}
N 530 -100 530 -60 {lab=GND}
N 390 -290 390 -110 {lab=virt}
N 390 -290 440 -290 {lab=virt}
N 390 -220 440 -220 {lab=virt}
N 530 -180 530 -160 {lab=vout}
N 350 -110 410 -110 {lab=virt}
N 500 -290 530 -290 {lab=vout}
N 530 -290 530 -180 {lab=vout}
N 500 -220 530 -220 {lab=vout}
N 430 20 430 60 {lab=GND}
N 430 -150 430 -40 {lab=vcm}
N 430 -150 490 -150 {lab=vcm}
N 530 -180 600 -180 {lab=vout}
N 660 -90 660 -50 {lab=GND}
N 660 -180 660 -150 {lab=vout}
N 600 -180 660 -180 {lab=vout}
C {vsource.sym} -40 -40 0 0 {name=Vmic value="0 AC 1" savecurrent=false}
C {res.sym} 80 -110 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {capa.sym} 210 -110 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -40 30 0 0 {name=l1 lab=GND}
C {res.sym} 320 -110 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 530 -130 0 0 {name=E1 value=1000}
C {gnd.sym} 530 -60 0 0 {name=l2 lab=GND}
C {res.sym} 470 -220 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {capa.sym} 470 -290 3 0 {name=C2
m=1
value=27p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 430 -10 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 430 60 0 0 {name=l3 lab=GND}
C {capa.sym} 660 -120 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 660 -50 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 10 -110 0 0 {name=p1 sig_type=std_logic lab=vnmic}
C {lab_wire.sym} 160 -110 0 0 {name=p2 sig_type=std_logic lab=vn1}
C {lab_wire.sym} 280 -110 0 0 {name=p3 sig_type=std_logic lab=vn2}
C {lab_wire.sym} 390 -130 0 0 {name=p4 sig_type=std_logic lab=virt}
C {lab_wire.sym} 430 -60 0 0 {name=p5 sig_type=std_logic lab=vcm}
C {lab_wire.sym} 600 -180 0 0 {name=p6 sig_type=std_logic lab=vout}
