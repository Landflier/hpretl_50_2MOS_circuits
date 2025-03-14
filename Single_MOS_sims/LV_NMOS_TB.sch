v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 800 -570 1600 -170 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=""
color=""
dataset=-1
unitx=1
logx=0
logy=0
}
N 170 -200 170 -110 {lab=GND}
N 20 -200 20 -110 {lab=GND}
N 80 -200 130 -200 {lab=#net1}
N 170 -280 300 -280 {lab=D}
N 300 -160 300 -110 {lab=GND}
N 300 -280 300 -220 {lab=D}
N 170 -280 170 -230 {lab=D}
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
C {vsource.sym} 50 -200 1 0 {name=Vgs value=3 savecurrent=false}
C {vsource.sym} 300 -190 0 0 {name=Vds value="pwl " savecurrent=false}
C {gnd.sym} 300 -110 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 170 -140 0 0 {name=p2 sig_type=std_logic lab=S
}
C {lab_wire.sym} 170 -280 0 0 {name=p1 sig_type=std_logic lab=D}
C {devices/code_shown.sym} -610 1150 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 0 -20 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib $\{PDK_MODELS\}/cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 460 -380 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
save all
save @n.xm1.nsg13_lv_nmos[gm]
save @n.xm1.nsg13_lv_nmos[gds]
save @n.xm1.nsg13_lv_nmos[vth]
save @n.xm1.nsg13_lv_nmos[cgg]
save @n.xm1.nsg13_lv_nmos[cgd]
save @n.xm1.nsg13_lv_nmos[vdss]
save @n.xm1.nsg13_lv_nmos[fug]
save @n.xm1.nsg13_lv_nmos[rg]
save @n.xm1.nsg13_lv_nmos[sid]
op
write dc_lv_nmos.raw
set appendwrite
dc Vds 0 1.5 0.01 Vgs 0 1.5 0.1
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
