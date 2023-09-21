v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 2 -190 -180 -190 -180 {}
N -120 -150 -120 -120 {
lab=GND}
N -220 -180 -160 -180 {
lab=#net1}
N -120 -210 0 -210 {
lab=#net2}
N -120 -180 -90 -180 {
lab=GND}
N -90 -180 -90 -140 {
lab=GND}
N -120 -140 -90 -140 {
lab=GND}
N 0 -150 0 -130 {
lab=GND}
N -220 -120 -220 -100 {
lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -140 -180 0 0 {name=M1
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
C {devices/vsource.sym} -220 -150 0 0 {name=VGS value=1.8
}
C {devices/gnd.sym} -120 -120 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -220 -100 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 0 -180 0 0 {name=VDS value=1.8
}
C {devices/gnd.sym} 0 -130 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -470 -270 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control 
save all
dc VGS 0 1.8 0.1
plot i(VDS)
.endc

"}
C {/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice} -170 -130 0 0 {}
