v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 -180 -120 -90 {
lab=#net1}
N -120 -30 -120 0 {
lab=GND}
N -80 -110 -80 -60 {
lab=#net1}
N -120 -110 -80 -110 {
lab=#net1}
N -250 -250 -250 -160 {
lab=#net2}
N -250 -250 -120 -250 {
lab=#net2}
N -120 -250 -120 -240 {
lab=#net2}
N -250 -100 -250 -20 {
lab=GND}
N -250 -20 -120 -20 {
lab=GND}
N -80 -60 -20 -60 {
lab=#net1}
N -150 -60 -120 -60 {
lab=GND}
N -150 -60 -150 -20 {
lab=GND}
N 90 -260 90 -180 {
lab=#net3}
N -20 -60 160 -60 {
lab=#net1}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} -100 -60 0 1 {name=M1
L=1.2
W=40
nf=4
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
C {/foss/tools/xschem/share/xschem/xschem_library/devices/isource.sym} -120 -210 0 0 {name=I0 value=64u}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/vsource.sym} -250 -130 0 0 {name=V1 value=5}
C {/foss/tools/xschem/share/xschem/xschem_library/devices/gnd.sym} -120 0 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 110 -290 0 1 {name=M4
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 70 -150 0 0 {name=M5
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 180 -60 0 0 {name=M6
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
