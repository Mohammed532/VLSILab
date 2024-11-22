***** nmos.sp
.option macmod=3
*.inclde '../saed32nm_hvt.spf'
.lib '../saed32nm.lib' TT
** Line 1730 n105 HVT (p105 for pmos)
.temp 70
.option post

** Source declaration
** Syntax: vname pos_node neg_node voltage_calue

Vgs	g	gnd	0
Vds	d	gnd	0
MMN	d	g	gnd	gnd 	n105_HVT	l=0.03u w=0.27u

Vvdd vdd 0 1.8v
Vgnd gnd 0 0v

.dc Vds 0 1.8 0.05 SWEEP Vgs 0 1.8 0.2
.prob dc i(*)
.print i(*)

.end

