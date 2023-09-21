v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -80 -130 -60 {
lab=VDD}
N -130 0 -130 20 {
lab=GND}
N 250 -120 350 -120 {
lab=Vout}
N 350 -60 350 -50 {
lab=GND}
N 230 -20 290 -20 {
lab=Vout}
N 290 -120 290 -20 {
lab=Vout}
N 90 -20 170 -20 {
lab=#net1}
N 90 -100 90 -20 {
lab=#net1}
N 90 -100 120 -100 {
lab=#net1}
N 90 -20 90 -10 {
lab=#net1}
N 90 50 90 60 {
lab=GND}
N 0 80 -0 90 {
lab=GND}
N 0 0 -0 20 {
lab=#net2}
N -0 -140 -0 -60 {
lab=Vin}
N -0 -140 120 -140 {
lab=Vin}
C {/foss/designs/Amplifier_PushPull.sym} 270 -100 0 0 {name=x1}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} -130 -30 0 0 {name=V1 value=5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vdd.sym} -130 -80 0 0 {name=l1 lab=VDD}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} -130 20 0 0 {name=l2 lab=GND}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/capa.sym} 350 -90 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 350 -50 0 0 {name=l3 lab=GND}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/res.sym} 200 -20 3 0 {name=R1
value=100MEG
footprint=1206
device=resistor
m=1}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/capa.sym} 90 20 0 0 {name=C2
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 90 60 0 0 {name=l4 lab=GND}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} 0 -30 0 0 {name=V2 value="dc 0 ac 1 0"}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} 0 50 0 0 {name=V3 value=2.5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 0 90 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} 430 -300 0 0 {name=ngspice only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option savecurrents
.control
save all
op
write TB_Amplifier_PushPull.raw
ac dec 100 1 1G 
plot vdb(Vout)
plot vp(Vout)
.endc

"}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/lab_wire.sym} 320 -120 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/lab_wire.sym} 50 -140 0 0 {name=p2 sig_type=std_logic lab=Vin
}
C {devices/launcher.sym} 250 70 0 0 {name=h1
descr="Netlist & sim"
tclcommand="xschem netlist; xschem simulate"

}
C {devices/launcher.sym} 250 120 0 0 {name=h2
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"

}
