v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -10 70 20 {
lab=GND}
N -30 -40 30 -40 {
lab=#net1}
N 70 -70 190 -70 {
lab=#net2}
N 70 -40 100 -40 {
lab=GND}
N 100 -40 100 0 {
lab=GND}
N 70 0 100 0 {
lab=GND}
N 190 -10 190 10 {
lab=GND}
N -30 20 -30 40 {
lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 50 -40 0 0 {name=M1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} -30 -10 0 0 {name=VGS value=1.8
}
C {devices/gnd.sym} 70 20 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -30 40 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 190 -40 0 0 {name=VDS value=1.8
}
C {devices/gnd.sym} 190 10 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -250 -150 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control 
save all
dc VDS 0 1.8 0.1
plot -i(VDS)
.endc

"}
C {/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice} -170 -130 0 0 {}
