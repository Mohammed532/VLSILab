***** pmos.sp
.option macmod=3
*.inclde '~/saed32nm_hvt.spf'
.lib '~/saed32nm.lib' TT
** Line 1730 n105 HVT (p105 for pmos)
.temp 70
.option post

** Source declaration
** Syntax: vname pos_node neg_node voltage_calue

** Sources
Vgs	g	vdd	0
Vds	d	vdd	0

** Components
** MOS Syntax: mosname drain gate source body template other_options(l,w)
MMN	d	g	vdd	vdd 	p105_HVT	l=0.03u w=0.54u

** Nodes
* Vvdd vdd 0 1.8v
Vvdd vdd 0 1.8v
Vgnd gnd 0 0v

.dc Vds -1.8 0 0.05 SWEEP Vgs -1.8 0 0.2
.prob dc i(*)
.print i(*)

.end

