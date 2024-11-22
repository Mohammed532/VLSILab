*****
* f_circuit.sp
* Lab 3
* Author: Mohammed Akinbayo
***** 

.option macmod=3
*.inclde '~/saed32nm_hvt.spf'
.lib '~/saed32nm.lib' TT
** Line 1730 n105 HVT (p105 for pmos)
.temp 70
.option post

** Source declaration
** Syntax: vname pos_node neg_node voltage_calue
** Pulse Syntax: PULSE low_v high_v low_v_time_width rising_time falling_time high_v_time_width total_signal_length

** Sources
Va	a	gnd	PULSE 0 5 1500ps 100ps 100ps 1500ps 3200ps
Vb	b	gnd	PULSE 0 5 700ps 100ps 100ps 700ps 3200ps
Vc	c	gnd	PULSE 0 5 300ps 100ps 100ps 300ps 3200ps

** Components
* Gates: CUSTOMNAME in1 in2 out NAND(NOR)2X1_HVT
*Pull Down
NOR1	a	b	n1	NOR2X1_HVT
NAND1	n1	c	f	NAND2X1_HVT

*** Simulation
.tran 0.1ps 900ps
.print v(a) v(b) v(out)

.end

