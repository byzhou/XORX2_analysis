** Generated for: hspiceD
** Generated on: Sep 22 17:00:19 2014
** Design library name: dummy_4_bit
** Design cell name: test_XORX2
** Design view name: schematic
.GLOBAL _gnet0 vss! vdd!

.OP

.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    post=1
.PROBE TRAN V(a) V(b1) V(a_in) V(b1_in) V(output) V(Vpower)
.INCLUDE "/ad/eng/users/b/o/bobzhou/Desktop/571/hw3/tech_files/45nm_HP.pm"
.include "../vsrc_files/vsrc_a_0.dat"
.include "../vsrc_files/vsrc_b1_0.dat"
.include "../XORX2_analysis/parameter.m"

** Library name: NangateOpenCellLibrary
** Cell name: XOR2_X2
** View name: schematic
.subckt XOR2_X2 a b z
m_i_19 net_001 a z vss! NMOS_VTL L=50e-9 W=415e-9
m_i_24 vss! b net_001 vss! NMOS_VTL L=50e-9 W=415e-9
m_i_19_23 net_001b a z vss! NMOS_VTL L=50e-9 W=415e-9
m_i_24_4 vss! b net_001b vss! NMOS_VTL L=50e-9 W=415e-9
m_i_0 net_000 a vss! vss! NMOS_VTL L=50e-9 W=415e-9
m_i_7 vss! b net_000 vss! NMOS_VTL L=50e-9 W=415e-9
m_i_13 z net_000 vss! vss! NMOS_VTL L=50e-9 W=415e-9
m_i_13_35 z net_000 vss! vss! NMOS_VTL L=50e-9 W=415e-9
m_i_30 net_002 a net_000 vdd! PMOS_VTL L=50e-9 W=630e-9
m_i_35 vdd! b net_002 vdd! PMOS_VTL L=50e-9 W=630e-9
m_i_41 net_003 net_000 vdd! vdd! PMOS_VTL L=50e-9 W=630e-9
m_i_41_29 net_003 net_000 vdd! vdd! PMOS_VTL L=50e-9 W=630e-9
m_i_47 z a net_003 vdd! PMOS_VTL L=50e-9 W=630e-9
m_i_53 net_003 b z vdd! PMOS_VTL L=50e-9 W=630e-9
m_i_53_18 net_003 b z vdd! PMOS_VTL L=50e-9 W=630e-9
m_i_47_27 z a net_003 vdd! PMOS_VTL L=50e-9 W=630e-9
.ends XOR2_X2
** End of subcircuit definition.

** Library name: equalized_logic
** Cell name: buffer4test
** View name: schematic
.subckt buffer4test buff_vdd buff_vss input output inh_bulk_n inh_bulk_p
m1 output net14 buff_vdd inh_bulk_p pmos_vtl L=50e-9 W=1.26e-6
m3 net14 input buff_vdd inh_bulk_p pmos_vtl L=50e-9 W=1.26e-6
m0 output net14 buff_vss inh_bulk_n nmos_vtl L=50e-9 W=830e-9
m9 net14 input buff_vss inh_bulk_n nmos_vtl L=50e-9 W=830e-9
.ends buffer4test
** End of subcircuit definition.

** Library name: dummy_4_bit
** Cell name: test_XORX2
** View name: schematic
xi30 a_in b1_in output XOR2_X2
f0 vpower 0 CCCS v3  1 M=1
v10 buff_vss 0 DC=0
v8 buff_vdd 0 DC=buff_vdd
v6 vss! 0 DC=0
v3 vdd! 0 DC=vdd
xi16 buff_vdd buff_vss a a_in 0 _gnet0 buffer4test
xi17 buff_vdd buff_vss b1 b1_in 0 _gnet0 buffer4test
c10 vpower 0 1e-12 IC=0
c0 output 0 663e-18
 
.END
