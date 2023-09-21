v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -160 20 -70 {
lab=#net1}
N 20 -10 20 20 {
lab=GND}
N 60 -90 60 -40 {
lab=#net1}
N 20 -90 60 -90 {
lab=#net1}
N -110 -230 -110 -140 {
lab=#net2}
N -110 -230 20 -230 {
lab=#net2}
N 20 -230 20 -220 {
lab=#net2}
N -110 -80 -110 0 {
lab=GND}
N -110 0 20 -0 {
lab=GND}
N 60 -40 120 -40 {
lab=#net1}
N -10 -40 20 -40 {
lab=GND}
N -10 -40 -10 -0 {
lab=GND}
N 160 -10 160 20 {
lab=GND}
N 160 -40 180 -40 {
lab=GND}
N 180 -40 180 0 {
lab=GND}
N 160 0 180 0 {
lab=GND}
N 160 -160 160 -70 {
lab=#net3}
N 160 -230 160 -220 {
lab=#net2}
N 20 -230 160 -230 {
lab=#net2}
N 200 -190 200 -150 {
lab=#net3}
N 160 -150 200 -150 {
lab=#net3}
N 120 -190 160 -190 {
lab=#net2}
N 120 -230 120 -190 {
lab=#net2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 40 -40 0 1 {name=M1
L=1.2
W=9.6
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 180 -190 0 1 {name=M2
L=1.2
W=21.76
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/isource.sym} 20 -190 0 0 {name=I0 value=20u}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} -110 -110 0 0 {name=V1 value=5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 20 20 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 140 -40 0 0 {name=M3
L=1.6
W=9.6
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
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 160 20 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -580 -400 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control 
save all
*dc VGS 0 1.8 0.1
.op
.endc

"}
