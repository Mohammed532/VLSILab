***** nand.sp
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
Va	a	gnd	PULSE 0 1.8 100ps 100ps 100ps 300ps 900ps
Vb	b	gnd	PULSE 0 1.8 300ps 100ps 100ps 300ps 900ps

** Components
** MOS Syntax: mosname drain gate source body template other_options(l,w)

*Pull Down
MMNa	out	a	n1	gnd 	n105_HVT	l=0.03u w=0.27u
MMNb	n1	b	gnd	gnd 	n105_HVT	l=0.03u w=0.27u

* Pull Up CHANGE L AND W PLEASE OH PLEASE OH GOD
MMPa	out	a	vdd	vdd	p105_HVT	l=0.03u w=0.135u
MMPb	out	b	vdd	vdd	p105_HVT	l=0.03u w=0.135u

** Nodes
Vvdd vdd 0 1.8v
Vgnd gnd 0 0v

.tran 0.1ps 900ps
.print v(a) v(b) v(out)

.end

