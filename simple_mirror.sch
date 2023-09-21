v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -270 -80 -180 {
lab=#net1}
N -80 -120 -80 -90 {
lab=GND}
N -40 -200 -40 -150 {
lab=#net1}
N -80 -200 -40 -200 {
lab=#net1}
N -210 -340 -210 -250 {
lab=#net2}
N -210 -340 -80 -340 {
lab=#net2}
N -80 -340 -80 -330 {
lab=#net2}
N -210 -190 -210 -110 {
lab=GND}
N -210 -110 -80 -110 {
lab=GND}
N -40 -150 20 -150 {
lab=#net1}
N -110 -150 -80 -150 {
lab=GND}
N -110 -150 -110 -110 {
lab=GND}
N 60 -120 60 -90 {
lab=GND}
N 60 -150 80 -150 {
lab=GND}
N 80 -150 80 -110 {
lab=GND}
N 60 -110 80 -110 {
lab=GND}
N 60 -270 60 -180 {
lab=#net3}
N 60 -340 60 -330 {
lab=#net2}
N -80 -340 60 -340 {
lab=#net2}
N 100 -300 100 -260 {
lab=#net3}
N 60 -260 100 -260 {
lab=#net3}
N 20 -300 60 -300 {
lab=#net2}
N 20 -340 20 -300 {
lab=#net2}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -60 -150 0 1 {name=M1
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
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 80 -300 0 1 {name=M2
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
C {/foss/tools/xschem/share/xschem/xschem_library/devices/isource.sym} -80 -300 0 0 {name=I0 value=20u}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} -210 -220 0 0 {name=V1 value=5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} -80 -90 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 40 -150 0 0 {name=M3
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
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} 60 -90 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -580 -400 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control 
save all
op
print all
.endc
"}
