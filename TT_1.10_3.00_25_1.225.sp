**********************************************
* Microchip Technology Inc.
* Sim: Test Mode TC
* Process:TT; vdd1:1.10; vdd:3.00; VREF:1.225
* Temp.:  25
**********************************************

simulator lang = spectre
**********************************************
include "/iplicense/cad/technology/esf3-28tid/opus61/latest/models/spectre/latest/sstlib.00.scs" section=TT
include "../../data/sti/cm_spectre.inc"
include "../../data/ckt/netlist_tc_2ip.inc"
**********************************************
TT_1p10_3p00_25 tran step=0.1n stop=118000n start=0
**********************************************
**********************************************
simulator lang = spice
**********************************************
.lib ../../data/ckt/cell2t_state.lib 25C
.vec ../../data/vec/SSTIP_csim_PROG_PROG_TC.vec

*.lib ../../data/vec/wave.lib PROG_PROG_TC
.inc ../../data/sti/cm_probe_tc_2ip.inc
**********************************************
.temp 25
.param pvdd  = 1.10
.param pvddq = 3.00
.param pvref = 1.225
**********************************************
vvdd1       vdd1     0  pwl(0n 0, 1u 'pvdd')
vvdd1_tc    vdd1_tc  0  pwl(0n 0, 1u 'pvdd')
vvdd        vdd      0  pwl(0n 0, 1u 'pvddq')
vvref       vrefpad  0  pwl(0n 0, 4u 'pvref')
vgnd        gnd      0  0
vvss        vss      0  0
**********************************************
*save_snapshot
*snapfile

.probe i(vtm0pad) i(vtm1pad) i(vvpp0pad) i(vvpp1pad)
*.tran 0.1n 118000n START=0.0 
.end
