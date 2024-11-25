*****
* f_circuit.sp
* Lab 3
* Author: Mohammed Akinbayo
***** 

.option macmod=3
* look in .spf file to read documentation
.include '~/saed32nm_hvt.spf'
.lib '~/saed32nm.lib' TT
.temp 70
.option post

.global VDD VSS
Vvdd VDD 0 1.8v
Vvss VSS 0 0v

** Source declaration
** Syntax: vname pos_node neg_node voltage_calue
** Pulse Syntax: PULSE low_v high_v low_v_time_width rising_time falling_time high_v_time_width total_signal_length

** Sources
Va	a	VSS	PULSE 0 1.8 1500ps 100ps 100ps 1500ps 3200ps
Vb	b	VSS	PULSE 0 1.8 700ps 100ps 100ps 700ps 1500ps
Vc	c	VSS	PULSE 0 1.8 300ps 100ps 100ps 300ps 800ps

** Components
* Gates: CUSTOMNAME in1 in2 out NAND(NOR)2X1_HVT
XNOR1	a	b	n1	NOR2X1_HVT
XNAND1	n1	c	f	NAND2X1_HVT

*** Simulation
.tran 50ps 3200ps
.measure TRAN fdly 
+	TRIG V(a) VAL=0.9 FALL=1 
+	TARG V(f) VAL=0.9 RISE=1 

.end

