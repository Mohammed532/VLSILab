*rc.sp
*Mohammed Akinbayo
*Find the response of RC to rising input

*------------------------------------------
*Params
*----------------------------------------

.option post

*------------------------------------
*Simulation
*-----------------------------------

Vin in gnd pwl 0ps 0 100ps 0 150ps 1.0 1ns 1.0
R1 in out 2k
C1 out gnd 100f

*------------------------------------------
*Stimulus
*-----------------------------------------

.tran 20ps 1ns
.plot v(in) v(out)
.end
