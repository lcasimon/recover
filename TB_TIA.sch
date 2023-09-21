v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -660 -260 -660 -240 {
lab=VDD}
N -660 -180 -660 -160 {
lab=GND}
N -280 -300 -180 -300 {
lab=Vout}
N -180 -240 -180 -230 {
lab=GND}
N -530 -320 -410 -320 {
lab=Iin}
N -320 -420 -260 -420 {
lab=Vout}
N -260 -420 -260 -300 {
lab=Vout}
N -440 -420 -380 -420 {
lab=Iin}
N -440 -420 -440 -320 {
lab=Iin}
N -430 -180 -430 -160 {
lab=GND}
N -430 -280 -430 -240 {
lab=#net1}
N -430 -280 -410 -280 {
lab=#net1}
N -610 -350 -610 -320 {
lab=VDD}
N -610 -320 -590 -320 {
lab=VDD}
N -350 -400 -350 -380 {
lab=GND}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} -660 -210 0 0 {name=V1 value=5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vdd.sym} -660 -260 0 0 {name=l1 lab=VDD}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} -660 -160 0 0 {name=l2 lab=GND}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/capa.sym} -180 -270 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} -180 -230 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -100 -480 0 0 {name=ngspice only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option savecurrents
.control
save all
op
  write TB_TIA.raw
dc I0 -100u 100u 10u
  write TB_TIA.raw
plot v(Vout) v(Iin)
.endc
"}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/lab_wire.sym} -210 -300 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/lab_wire.sym} -480 -320 0 0 {name=p2 sig_type=std_logic lab=Iin
}
C {devices/launcher.sym} -280 -110 0 0 {name=h1
descr="Netlist & sim"
tclcommand="xschem netlist; xschem simulate"

}
C {devices/launcher.sym} -280 -60 0 0 {name=h2
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"

}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} -430 -210 0 0 {name=V4 value=2.5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} -430 -160 0 0 {name=l4 lab=GND}
C {devices/isource.sym} -560 -320 1 1 {name=I0 value=100u}
C {/foss/designs/Amplifier_PushPull.sym} -260 -320 2 1 {name=x3}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vdd.sym} -610 -350 0 0 {name=l5 lab=VDD}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} -350 -420 3 0 {name=R1
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} -350 -380 0 0 {name=l6 lab=GND}
