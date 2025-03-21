v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 830 -570 1630 -170 {flags=graph
y1=0
y2=400u
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-1.3877788e-17
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node=i(vd)
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
x2=1.5}
B 2 830 -990 1630 -590 {flags=graph
y1=-1.4e-09
y2=0.00049
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3877788e-17
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@n.xm1.nsg13_lv_nmos[gm]
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
B 2 1700 -570 2500 -170 {flags=graph
y1=2.9e-09
y2=0.00074
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3877788e-17
x2=1.5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=@n.xm1.nsg13_lv_nmos[gds]
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1}
B 2 1700 -990 2500 -590 {flags=graph
y1=0
y2=0.00074
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-1.3877788e-17
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="\\"i(vd) deriv()\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
x2=1.5}
B 2 2570 -990 3370 -590 {flags=graph
y1=-2.8e-06
y2=79
ypos1=0
ypos2=2
divy=5
subdivy=4
unity=1
x1=-1.3877788e-17
x2=1.5
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0
node="\\"@n.xm1.nsg13_lv_nmos[rout] @n.xm1.nsg13_lv_nmos[gm] *\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
rainbow=1
sweep=Vgs}
N 20 -200 20 -110 {lab=GND}
N 80 -200 130 -200 {lab=#net1}
N 300 -160 300 -110 {lab=GND}
N 300 -280 300 -220 {lab=#net2}
N 170 -280 170 -230 {lab=D}
N 170 -170 170 -110 {lab=GND}
N 170 -200 230 -200 {lab=GND}
N 230 -200 230 -110 {lab=GND}
N 170 -280 220 -280 {lab=D}
N 280 -280 300 -280 {lab=#net2}
C {gnd.sym} 170 -110 0 0 {name=l2 lab=GND}
C {gnd.sym} 20 -110 0 0 {name=l3 lab=GND}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -200 2 1 {name=M1
l=0.45u
w=1.0u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {vsource.sym} 50 -200 1 0 {name=Vgs value=3}
C {vsource.sym} 300 -190 0 0 {name=Vds value=1 savecurrent=true}
C {gnd.sym} 300 -110 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 170 -280 0 0 {name=p1 sig_type=std_logic lab=D}
C {devices/code_shown.sym} 0 -30 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 460 -380 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
save @n.xm1.nsg13_lv_nmos[gm]
save @n.xm1.nsg13_lv_nmos[gds]
save @n.xm1.nsg13_lv_nmos[rout]
save @n.xm1.nsg13_lv_nmos[cgs]
save @n.xm1.nsg13_lv_nmos[cgb]
save @n.xm1.nsg13_lv_nmos[cgd]
save @n.xm1.nsg13_lv_nmos[cdb]
op
write dc_lv_nmos.raw
set appendwrite
dc Vds 0 1.5 0.01 Vgs 0 1.5 0.2
write dc_lv_nmos.raw
quit
.endc
"}
C {devices/launcher.sym} 890 -80 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/dc_lv_nmos.raw dc"
}
C {devices/launcher.sym} 890 -120 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 890 -40 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {gnd.sym} 230 -110 0 0 {name=l4 lab=GND}
C {ammeter.sym} 250 -280 1 0 {name=Vd savecurrent=true}
