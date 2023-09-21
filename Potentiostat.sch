v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1150 -770 1950 -370 {flags=graph
y1=1.29393
y2=5.35176
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.6e-05
x2=0.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
Vin"
color="15 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N 930 -420 1030 -420 {
lab=Vout}
N 1030 -360 1030 -350 {
lab=GND}
N 720 -440 800 -440 {
lab=#net1}
N 890 -540 950 -540 {
lab=Vout}
N 950 -540 950 -420 {
lab=Vout}
N 770 -540 830 -540 {
lab=#net1}
N 770 -540 770 -440 {
lab=#net1}
N 780 -300 780 -280 {
lab=GND}
N 780 -400 780 -360 {
lab=Vref}
N 780 -400 800 -400 {
lab=Vref}
N 860 -520 860 -500 {
lab=GND}
N 240 -880 270 -880 {
lab=Vref}
N 180 -840 270 -840 {
lab=#net2}
N 220 -840 220 -780 {
lab=#net2}
N 220 -660 250 -660 {
lab=#net3}
N 220 -720 220 -660 {
lab=#net3}
N 380 -640 400 -640 {
lab=#net3}
N 400 -640 400 -600 {
lab=#net3}
N 220 -600 400 -600 {
lab=#net3}
N 220 -660 220 -600 {
lab=#net3}
N 150 -820 150 -800 {
lab=GND}
N 180 -750 200 -750 {
lab=GND}
N 180 -750 180 -730 {
lab=GND}
N 650 -760 650 -750 {
lab=#net4}
N 650 -750 690 -750 {
lab=#net4}
N 690 -750 690 -740 {
lab=#net4}
N 610 -750 650 -750 {
lab=#net4}
N 610 -750 610 -740 {
lab=#net4}
N 610 -680 610 -670 {
lab=#net5}
N 610 -670 690 -670 {
lab=#net5}
N 690 -680 690 -670 {
lab=#net5}
N 690 -630 690 -620 {
lab=#net5}
N 610 -630 690 -630 {
lab=#net5}
N 610 -630 610 -620 {
lab=#net5}
N 650 -660 650 -630 {
lab=#net5}
N 610 -560 610 -550 {
lab=#net6}
N 610 -550 690 -550 {
lab=#net6}
N 690 -560 690 -550 {
lab=#net6}
N 650 -550 650 -530 {
lab=#net6}
N 650 -670 650 -660 {
lab=#net5}
N 560 -650 650 -650 {
lab=#net5}
N 650 -840 650 -820 {
lab=CE}
N 480 -650 500 -650 {
lab=RE}
N 650 -470 650 -450 {
lab=NWE}
N 400 -860 650 -860 {
lab=CE}
N 650 -860 650 -840 {
lab=CE}
N 380 -680 450 -680 {
lab=RE}
N 450 -680 450 -650 {
lab=RE}
N 450 -650 480 -650 {
lab=RE}
N 650 -450 650 -440 {
lab=NWE}
N 880 -930 880 -910 {
lab=VDD}
N 880 -850 880 -830 {
lab=GND}
N 60 -840 60 -820 {
lab=Vin}
N 60 -840 120 -840 {
lab=Vin}
N 60 -760 60 -740 {
lab=GND}
N 650 -440 660 -440 {
lab=NWE}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/capa.sym} 1030 -390 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 1030 -350 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 950 -980 0 0 {name=ngspice only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.option savecurrents
.control
save all
op
  write Potentiostat.raw
tran 0.1m 500m 0.01m
  write Potentiostat.raw
plot v(Vin) v(Vout)
plot i(V1)
.endc
"}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/lab_wire.sym} 1000 -420 0 0 {name=p1 sig_type=std_logic lab=Vout}
C {devices/launcher.sym} 930 -230 0 0 {name=h1
descr="Netlist & sim"
tclcommand="xschem netlist; xschem simulate"

}
C {devices/launcher.sym} 930 -180 0 0 {name=h2
descr="Annotate OP"
tclcommand="set show_hidden_texts 1; xschem annotate_op"

}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} 780 -330 0 0 {name=V4 value=2.5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 780 -280 0 0 {name=l4 lab=GND}
C {/foss/designs/Amplifier_PushPull.sym} 950 -440 2 1 {name=x3}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 860 -500 0 0 {name=l6 lab=GND}
C {/foss/designs/Amplifier_PushPull.sym} 420 -840 0 0 {name=x1}
C {devices/lab_wire.sym} 780 -400 0 0 {name=p3 sig_type=std_logic lab=Vref}
C {devices/lab_wire.sym} 240 -880 0 0 {name=p4 sig_type=std_logic lab=Vref}
C {sky130_fd_pr/res_high_po_1p41.sym} 150 -840 3 0 {name=Rp1
L=61.3
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_1p41.sym} 220 -750 0 0 {name=Rp2
L=61.3
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {/foss/designs/Amplifier_PushPull.sym} 230 -640 0 1 {name=x2}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 150 -800 0 0 {name=l5 lab=GND}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 180 -730 0 0 {name=l7 lab=GND}
C {devices/res.sym} 650 -790 2 0 {name=R6
value=10
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 690 -710 2 0 {name=R7
value=287
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 610 -710 2 0 {name=C4
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 610 -590 2 0 {name=C5
m=1
value=10u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 690 -590 2 0 {name=R8
value=10k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 650 -500 2 0 {name=R9
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 530 -650 3 0 {name=R10
value=1k
footprint=1206
device=resistor
m=1}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} 880 -880 0 0 {name=V2 value=5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vdd.sym} 880 -930 0 0 {name=l8 lab=VDD}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 880 -830 0 0 {name=l9 lab=GND}
C {devices/lab_wire.sym} 650 -840 0 0 {name=p5 sig_type=std_logic lab=CE}
C {devices/lab_wire.sym} 480 -650 0 0 {name=p6 sig_type=std_logic lab=RE}
C {devices/vsource.sym} 60 -790 0 0 {name=VEN value="pwl 
+0 1.5
+20m 1.5
+40m 1.7
+60m 1.7
+80m 1.9
+100m 1.9
+120m 2.1
+140m 2.1
+160m 2.3
+180m 2.3
+200m 2.5
+220m 2.5
+240m 2.7
+260m 2.7
+280m 2.9
+300m 2.9
+320m 3.1
+340m 3.1
+360m 3.3
+380m 3.3
+400m 3.5
+420m 3.5"
spice_ignore=false}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 60 -740 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -840 0 0 {name=p8 sig_type=std_logic lab=Vin}
C {devices/lab_wire.sym} 650 -440 0 0 {name=p2 sig_type=std_logic lab=NWE}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} 690 -440 3 0 {name=V1 value=0}
C {sky130_fd_pr/res_xhigh_po_1p41.sym} 860 -540 3 0 {name=R1
L=7
model=res_xhigh_po_1p41
spiceprefix=X
mult=1}
C {devices/launcher.sym} 1310 -330 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/Potentiostat.raw tran"
}
